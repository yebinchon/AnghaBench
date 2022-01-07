
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 char const* fz_xml_att (int *,char*) ;
 int * fz_xml_find_down (int *,char*) ;
 int * fz_xml_find_next (int *,char*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static const char *
rel_path_from_idref(fz_xml *manifest, const char *idref)
{
 fz_xml *item;
 if (!idref)
  return ((void*)0);
 item = fz_xml_find_down(manifest, "item");
 while (item)
 {
  const char *id = fz_xml_att(item, "id");
  if (id && !strcmp(id, idref))
   return fz_xml_att(item, "href");
  item = fz_xml_find_next(item, "item");
 }
 return ((void*)0);
}
