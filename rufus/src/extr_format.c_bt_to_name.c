
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_IMAGE ;

 int HAS_KOLIBRIOS (int ) ;
 int boot_type ;
 int img_report ;

__attribute__((used)) static __inline const char* bt_to_name(void) {
 switch (boot_type) {
 case 129: return "FreeDOS";
 case 128: return "ReactOS";
 default:
  return ((boot_type == BT_IMAGE) && HAS_KOLIBRIOS(img_report)) ? "KolibriOS" : "Standard";
 }
}
