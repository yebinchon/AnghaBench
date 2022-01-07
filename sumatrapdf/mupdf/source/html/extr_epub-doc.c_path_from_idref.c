
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_xml ;


 char const* fz_cleanname (int ) ;
 int fz_strlcat (char*,char const*,int) ;
 int fz_strlcpy (char*,char const*,int) ;
 int fz_urldecode (char*) ;
 char* rel_path_from_idref (int *,char const*) ;

__attribute__((used)) static const char *
path_from_idref(char *path, fz_xml *manifest, const char *base_uri, const char *idref, int n)
{
 const char *rel_path = rel_path_from_idref(manifest, idref);
 if (!rel_path)
 {
  path[0] = 0;
  return ((void*)0);
 }
 fz_strlcpy(path, base_uri, n);
 fz_strlcat(path, "/", n);
 fz_strlcat(path, rel_path, n);
 return fz_cleanname(fz_urldecode(path));
}
