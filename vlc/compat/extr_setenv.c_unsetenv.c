
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setenv (char const*,char*,int) ;

int unsetenv (const char *name)
{
    return setenv (name, "", 1);
}
