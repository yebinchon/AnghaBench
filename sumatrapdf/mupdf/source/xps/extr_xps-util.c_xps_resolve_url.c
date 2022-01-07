
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_context ;


 int clean_path (char*) ;
 int fz_strlcat (char*,char*,int) ;
 size_t fz_strlcpy (char*,char*,int) ;
 char* skip_authority (int ) ;
 int skip_scheme (char*) ;

void
xps_resolve_url(fz_context *ctx, xps_document *doc, char *output, char *base_uri, char *path, int output_size)
{
 char *p = skip_authority(skip_scheme(path));

 if (p != path || path[0] == '/')
 {
  fz_strlcpy(output, path, output_size);
 }
 else
 {
  size_t len = fz_strlcpy(output, base_uri, output_size);
  if (len == 0 || output[len-1] != '/')
   fz_strlcat(output, "/", output_size);
  fz_strlcat(output, path, output_size);
 }
 clean_path(output);
}
