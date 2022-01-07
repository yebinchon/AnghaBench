
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_p_strncpy_s (char*,int,char*,int) ;

char *stb_strncpy(char *s, char *t, int n)
{
   stb_p_strncpy_s(s,n+1,t,n);
   s[n-1] = 0;
   return s;
}
