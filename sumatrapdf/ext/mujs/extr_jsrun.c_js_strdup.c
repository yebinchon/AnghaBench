
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char* js_malloc (int *,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *js_strdup(js_State *J, const char *s)
{
 int n = strlen(s) + 1;
 char *p = js_malloc(J, n);
 memcpy(p, s, n);
 return p;
}
