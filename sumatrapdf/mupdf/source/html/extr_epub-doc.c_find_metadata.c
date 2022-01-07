
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;
typedef int fz_context ;


 char* fz_strdup (int *,char*) ;
 int fz_xml_down (int ) ;
 int fz_xml_find_down (int *,char*) ;
 char* fz_xml_text (int ) ;

__attribute__((used)) static char *
find_metadata(fz_context *ctx, fz_xml *metadata, char *key)
{
 char *text = fz_xml_text(fz_xml_down(fz_xml_find_down(metadata, key)));
 if (text)
  return fz_strdup(ctx, text);
 return ((void*)0);
}
