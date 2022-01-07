
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_FATAL ;
 int report (int ,char*) ;
 char* strdup (char const*) ;

char *xstrdup( const char *str )
{
    char *res = strdup( str );
    if (!res) report (R_FATAL, "Out of memory.");
    return res;
}
