
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb__splitpath_raw (int *,char*,int) ;

char *stb_splitpathdup(char *src, int flag)
{
   return stb__splitpath_raw(((void*)0), src, flag);
}
