
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 int * fz_xml_down (int *) ;
 int * fz_xml_find (int *,char const*) ;

fz_xml *fz_xml_find_down(fz_xml *item, const char *tag)
{
 if (item)
  item = fz_xml_down(item);
 return fz_xml_find(item, tag);
}
