
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;
typedef int fz_context ;


 char* fz_malloc (int *,size_t) ;
 int * fz_xml_down (int *) ;
 int * fz_xml_next (int *) ;
 char* fz_xml_text (int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *concat_text(fz_context *ctx, fz_xml *root)
{
 fz_xml *node;
 size_t i = 0, n = 1;
 char *s;
 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
 {
  const char *text = fz_xml_text(node);
  n += text ? strlen(text) : 0;
 }
 s = fz_malloc(ctx, n);
 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
 {
  const char *text = fz_xml_text(node);
  if (text)
  {
   n = strlen(text);
   memcpy(s+i, text, n);
   i += n;
  }
 }
 s[i] = 0;
 return s;
}
