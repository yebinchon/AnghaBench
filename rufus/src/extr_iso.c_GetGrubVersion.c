
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unauthorized ;
typedef int grub_version_str ;
struct TYPE_2__ {char* grub2_version; } ;


 TYPE_1__ img_report ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int static_strcpy (char*,char*) ;

void GetGrubVersion(char* buf, size_t buf_size)
{
 char *p, unauthorized[] = {'<', '>', ':', '|', '*', '?', '\\', '/'};
 size_t i;
 const char grub_version_str[] = "GRUB  version %s";

 for (i=0; i<buf_size; i++) {
  if (memcmp(&buf[i], grub_version_str, sizeof(grub_version_str)) == 0) {
   static_strcpy(img_report.grub2_version, &buf[i + sizeof(grub_version_str)]);
   break;
  }
 }

 for (p = &img_report.grub2_version[0]; *p; p++) {
  for (i=0; i<sizeof(unauthorized); i++) {
   if (*p == unauthorized[i])
    *p = '_';
  }
 }


 if (img_report.grub2_version[0] == '0')
  img_report.grub2_version[0] = 0;
}
