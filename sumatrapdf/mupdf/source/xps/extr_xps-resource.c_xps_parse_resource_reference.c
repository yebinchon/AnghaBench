
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int fz_strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 int * xps_lookup_resource (int *,int *,int *,char*,char**) ;

__attribute__((used)) static fz_xml *
xps_parse_resource_reference(fz_context *ctx, xps_document *doc, xps_resource *dict, char *att, char **urip)
{
 char name[1024];
 char *s;

 if (strstr(att, "{StaticResource ") != att)
  return ((void*)0);

 fz_strlcpy(name, att + 16, sizeof name);
 s = strrchr(name, '}');
 if (s)
  *s = 0;

 return xps_lookup_resource(ctx, doc, dict, name, urip);
}
