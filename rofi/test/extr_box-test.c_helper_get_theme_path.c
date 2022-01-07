
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_strdup (char const*) ;

char * helper_get_theme_path ( const char *file )
{
    return g_strdup ( file );
}
