
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_STR ;
 char* _PATH_DEFPATH ;
 scalar_t__ access (char const*,int) ;
 scalar_t__ strchr (char const*,char) ;
 size_t strcspn (char const*,char*) ;
 int string_format (char*,char*,char*,char const*) ;
 int string_ncopy (char*,char const*,int) ;
 int string_ncopy_do (char*,size_t,char const*,int ) ;
 int strlen (char const*) ;

bool
path_search(char *dst, size_t dstlen, const char *query, const char *colon_path, int access_flags)
{
 const char *_colon_path = _PATH_DEFPATH;
 char test[SIZEOF_STR];
 char elt[SIZEOF_STR];
 size_t elt_len;

 if (!query || !*query)
  return 0;

 if (strchr(query, '/')) {
  if (access(query, access_flags))
   return 0;
  string_ncopy_do(dst, dstlen, query, strlen(query));
  return 1;
 }

 if (colon_path && *colon_path)
  _colon_path = colon_path;

 while (_colon_path && *_colon_path) {
  elt_len = strcspn(_colon_path, ":");
  if (elt_len)
   string_ncopy(elt, _colon_path, elt_len);
  else
   string_ncopy(elt, ".", 1);

  _colon_path += elt_len;
  if (*_colon_path)
   _colon_path += 1;

  string_format(test, "%s/%s", elt, query);
  if (!access(test, access_flags)) {
   string_ncopy_do(dst, dstlen, test, strlen(test));
   return 1;
  }
 }
 return 0;
}
