
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int free (char*) ;
 int isdigit (int ) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 char* xstrdup (char const*) ;

char *
options_parse(const char *name, int *idx)
{
 char *copy, *cp, *end;

 if (*name == '\0')
  return (((void*)0));
 copy = xstrdup(name);
 if ((cp = strchr(copy, '[')) == ((void*)0)) {
  *idx = -1;
  return (copy);
 }
 end = strchr(cp + 1, ']');
 if (end == ((void*)0) || end[1] != '\0' || !isdigit((u_char)end[-1])) {
  free(copy);
  return (((void*)0));
 }
 if (sscanf(cp, "[%d]", idx) != 1 || *idx < 0) {
  free(copy);
  return (((void*)0));
 }
 *cp = '\0';
 return (copy);
}
