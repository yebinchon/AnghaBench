
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* href; struct TYPE_3__* up; } ;
typedef TYPE_1__ fz_html_box ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int has_same_href(fz_html_box *box, const char *old_href)
{
 while (box)
 {
  const char *href = box->href;
  if (href)
   return !strcmp(old_href, href);
  box = box->up;
 }
 return 0;
}
