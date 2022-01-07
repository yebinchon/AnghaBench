
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** stb_getopt_param (int*,char**,char*) ;

char **stb_getopt(int *argc, char **argv)
{
   return stb_getopt_param(argc, argv, (char*) "");
}
