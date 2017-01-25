
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

  if (typeof $elem.find('img')[0] !== "undefined") {
    var $imgH = $elem.find('img')[0].naturalHeight;
    var $imgW = $elem.find('img')[0].naturalWidth;
  };
  if ($imgW >= 190){
    $imgH = $imgH/($imgW/190);
  }

  $elem.find('img')
     .stop(true)
     .animate({
      'width':'190px',
      'height': $imgH,
      'left':'0px',
      'opacity': '1'
     },500,'easeOutQuint')
     .andSelf()
     .find('.sdt_wrap')
       .stop(true)
     .animate({'top':'140px'},500,'easeOutBack')
     .andSelf()
     .find('.sdt_wrap_2')
       .stop(true)
     .animate({'top':'115px'},500,'easeOutBack')
     .andSelf()
     .find('.sdt_wrap_3')
       .stop(true)
     .animate({'top':'30px'},500,'easeOutBack')
     .andSelf()
     .find('.sdt_active_2')
       .stop(true)
     .animate({'height':'90px'},500,'easeOutBack')
     .andSelf()
     .find('.sdt_active')
       .stop(true)
     .animate({'height':'190px'},300,function(){
    var $sub_menu = $elem.find('.sdt_box');
    if($sub_menu.length){
      var left = '190px';
      if($elem.parent().children().length == $elem.index()+1)
        left = '-190px';
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
      'left':'85px',
      'opacity':'0'},300)
     .andSelf()
     .find('.sdt_wrap')
     .stop(true)
     .animate({'top':'25px'},500);

  $elem.find('.sdt_active_2')
     .stop(true)
     .animate({'height':'0px'},300)
     .andSelf().find('img')
     .stop(true)
     .animate({
      'width':'0px',
      'height':'0px',
      'left':'85px',
      'opacity':'0'},300)
     .andSelf()
     .find('.sdt_wrap_2')
     .stop(true)
     .animate({'top':'25px'},500);

  $elem.find('.sdt_wrap_3')
     .stop(true)
     .animate({'top':'25px'},500);
  });
});