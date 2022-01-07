
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* href; struct TYPE_3__* up; } ;
typedef TYPE_1__ fz_html_box ;



__attribute__((used)) static const char *box_href(fz_html_box *box)
{
 while (box)
 {
  const char *href = box->href;
  if (href)
   return href;
  box = box->up;
 }
 return ((void*)0);
}
