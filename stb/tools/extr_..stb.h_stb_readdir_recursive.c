
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** stb_readdir_rec (int *,char*,char*) ;

char **stb_readdir_recursive(char *dir, char *filespec)
{
   return stb_readdir_rec(((void*)0), dir, filespec);
}
