
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * getenv (char const*) ;
 char* malloc (size_t) ;
 int putenv (char*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 size_t strlen (char const*) ;

int setenv (const char *name, const char *value, int override)
{
    return -1;

}
