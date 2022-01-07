
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int atoi (char*) ;
 int js_pushstring (int *,char*) ;
 int sprintf (char*,char const*,int,...) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void numtostr(js_State *J, const char *fmt, int w, double n)
{

 char buf[50], *e;
 sprintf(buf, fmt, w, n);
 e = strchr(buf, 'e');
 if (e) {
  int exp = atoi(e+1);
  sprintf(e, "e%+d", exp);
 }
 js_pushstring(J, buf);
}
