
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int strcat (char*,char*) ;
 int strncat (char*,char const*,int) ;
 int strncpy (char*,char const*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
pathjoin(const char *a, const char *b)
{
 char *result;
 result = xmalloc(PATH_MAX * 2 + 1);

 if (b[0] == '/')
 {
  strncpy(result, b, PATH_MAX);
 }
 else
 {
  strncpy(result, a, PATH_MAX);
  strcat(result, "/");
  strncat(result, b, PATH_MAX);
 }
 return result;
}
