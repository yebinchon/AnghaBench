
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int stb_p_strncpy_s (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;

char *stb_substr(char *t, int n)
{
   char *a;
   int z = (int) strlen(t);
   if (z < n) n = z;
   a = (char *) malloc(n+1);
   stb_p_strncpy_s(a,n+1,t,n);
   a[n] = 0;
   return a;
}
