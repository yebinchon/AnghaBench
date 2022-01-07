
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gettail (int ) ;
 int p_sh ;
 int * strstr (char*,char*) ;

int
csh_like_shell()
{
    return (strstr((char *)gettail(p_sh), "csh") != ((void*)0));
}
