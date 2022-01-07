
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_dirtree2 ;


 int * stb_dirtree2_from_files_relative (char*,char**,int) ;

stb_dirtree2 *stb_dirtree2_from_files(char **filelist, int count)
{
   return stb_dirtree2_from_files_relative((char*) "", filelist, count);
}
