
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_context ;


 int fz_strlcat (char*,char*,int) ;
 int fz_strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
xps_rels_for_part(fz_context *ctx, xps_document *doc, char *buf, char *name, int buflen)
{
 char *p, *basename;
 p = strrchr(name, '/');
 basename = p ? p + 1 : name;
 fz_strlcpy(buf, name, buflen);
 p = strrchr(buf, '/');
 if (p) *p = 0;
 fz_strlcat(buf, "/_rels/", buflen);
 fz_strlcat(buf, basename, buflen);
 fz_strlcat(buf, ".rels", buflen);
}
