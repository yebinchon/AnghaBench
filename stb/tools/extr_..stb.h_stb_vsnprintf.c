
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int _TRUNCATE ;
 int _vsnprintf_s (char*,size_t,int ,char const*,int ) ;
 int stb_p_vsnprintf (char*,size_t,char const*,int ) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int stb_vsnprintf(char *s, size_t n, const char *fmt, va_list v)
{
   int res;







   res = vsnprintf(s,n,fmt,v);

   if (n) s[n-1] = 0;

   return (res >= (int) n || res < 0) ? -1 : res;
}
