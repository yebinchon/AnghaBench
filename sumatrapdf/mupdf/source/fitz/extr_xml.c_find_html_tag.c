
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* tag; } ;


 int fz_xml_html_tag__NONE ;
 TYPE_1__* html_tags ;
 int nelem (TYPE_1__*) ;
 int strncmp (int*,char const*,int) ;

__attribute__((used)) static int
find_html_tag(const char *tag, int len)
{
 int low = 0;
 int high = nelem(html_tags);
 int mid;

 while (low != high)
 {
  int cmp;
  mid = (low + high)>>1;
  cmp = strncmp(html_tags[mid].tag, tag, len);
  if (cmp == 0)
   cmp = html_tags[mid].tag[len];
  if (cmp == 0)
   return mid;
  if (cmp < 0)
   low = mid+1;
  else
   high = mid;
 }

 return fz_xml_html_tag__NONE;
}
