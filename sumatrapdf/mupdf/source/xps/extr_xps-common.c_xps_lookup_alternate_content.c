
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int list ;
typedef int fz_xml ;
typedef int fz_context ;


 int fz_strlcpy (char*,scalar_t__,int) ;
 char* fz_strsep (char**,char*) ;
 scalar_t__ fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * fz_xml_next (int *) ;
 int strcmp (char*,char*) ;

fz_xml *
xps_lookup_alternate_content(fz_context *ctx, xps_document *doc, fz_xml *node)
{
 for (node = fz_xml_down(node); node; node = fz_xml_next(node))
 {
  if (fz_xml_is_tag(node, "Choice") && fz_xml_att(node, "Requires"))
  {
   char list[64];
   char *next = list, *item;
   fz_strlcpy(list, fz_xml_att(node, "Requires"), sizeof(list));
   while ((item = fz_strsep(&next, " \t\r\n")) != ((void*)0) && (!*item || !strcmp(item, "xps")));
   if (!item)
    return fz_xml_down(node);
  }
  else if (fz_xml_is_tag(node, "Fallback"))
   return fz_xml_down(node);
 }
 return ((void*)0);
}
