<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script type="text/javascript" src="catalog/view/javascript/jquery.easing.1.3.js"></script>c
        <script type="text/javascript">
            $(function() {
        /**
        * for each menu element, on mouseenter, 
        * we enlarge the image, and show both sdt_active span and 
        * sdt_wrap span. If the element has a sub menu (sdt_box),
        * then we slide it - if the element is the last one in the menu
        * we slide it to the left, otherwise to the right
        */
                $('#sdt_menu > li').bind('mouseenter',function(){
          var $elem = $(this);
          $elem.find('img')
             .stop(true)
             .animate({
              'width':'170px',
              'height':'170px',
              'left':'0px'
             },400,'easeOutBack')
             .andSelf()
             .find('.sdt_wrap')
               .stop(true)
             .animate({'top':'140px'},500,'easeOutBack')
             .andSelf()
             .find('.sdt_active')
               .stop(true)
             .animate({'height':'170px'},300,function(){
            var $sub_menu = $elem.find('.sdt_box');
            if($sub_menu.length){
              var left = '170px';
              if($elem.parent().children().length == $elem.index()+1)
                left = '-170px';
              $sub_menu.show().animate({'left':left},200);
            } 
          });
        }).bind('mouseleave',function(){
          var $elem = $(this);
          var $sub_menu = $elem.find('.sdt_box');
          if($sub_menu.length)
            $sub_menu.hide().css('left','0px');
          
          $elem.find('.sdt_active')
             .stop(true)
             .animate({'height':'0px'},300)
             .andSelf().find('img')
             .stop(true)
             .animate({
              'width':'0px',
              'height':'0px',
              'left':'85px'},400)
             .andSelf()
             .find('.sdt_wrap')
             .stop(true)
             .animate({'top':'25px'},500);
        });
            });
        </script>
</body></html>