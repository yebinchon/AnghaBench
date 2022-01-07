
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int * strchr (char const*,char) ;

gboolean script_switcher_is_valid ( const char *token )
{
    return strchr ( token, ':' ) != ((void*)0);
}
