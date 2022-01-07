
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_ptr_not_null (void*,char*) ;
 int assert_x_eq (int,int,char*) ;
 int dallocx (void*,int ) ;
 scalar_t__ data_cleanup_count ;
 void* mallocx (int,int ) ;
 int not_reached () ;

void
data_cleanup(int *data) {
 if (data_cleanup_count == 0) {
  assert_x_eq(*data, 128,
      "Argument passed into cleanup function should match tsd "
      "value");
 }
 ++data_cleanup_count;





 bool reincarnate = 0;
 switch (*data) {
 case 128:
  *data = 1;
  reincarnate = 1;
  break;
 case 1:
  *data = 2;
  reincarnate = 1;
  break;
 case 2:
  return;
 default:
  not_reached();
 }

 if (reincarnate) {
  void *p = mallocx(1, 0);
  assert_ptr_not_null(p, "Unexpeced mallocx() failure");
  dallocx(p, 0);
 }
}
