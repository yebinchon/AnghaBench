
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STB_FALSE ;
 int STB_TRUE ;
 scalar_t__ stb_strnicmp (char*,char*,int) ;

int stb_dir_is_prefix(char *dir, int dirlen, char *file)
{
   if (dirlen == 0) return STB_TRUE;
   if (stb_strnicmp(dir, file, dirlen)) return STB_FALSE;
   if (file[dirlen] == '/' || file[dirlen] == '\\') return STB_TRUE;
   return STB_FALSE;
}
