
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int buf ;
typedef int FILE ;


 char* clib_check_lds (int *,char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static const char *clib_resolve_lds(lua_State *L, const char *name)
{
  FILE *fp = fopen(name, "r");
  const char *p = ((void*)0);
  if (fp) {
    char buf[256];
    if (fgets(buf, sizeof(buf), fp)) {
      if (!strncmp(buf, "/* GNU ld script", 16)) {
 while (fgets(buf, sizeof(buf), fp)) {
   p = clib_check_lds(L, buf);
   if (p) break;
 }
      } else {
 p = clib_check_lds(L, buf);
      }
    }
    fclose(fp);
  }
  return p;
}
