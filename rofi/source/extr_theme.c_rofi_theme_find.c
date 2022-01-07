
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;
typedef int ThemeWidget ;


 int FALSE ;
 int TRUE ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 int * rofi_theme_find_single (int *,char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static ThemeWidget *rofi_theme_find ( ThemeWidget *widget, const char *name, const gboolean exact )
{
    if ( widget == ((void*)0) || name == ((void*)0) ) {
        return widget;
    }
    char *tname = g_strdup ( name );
    char *saveptr = ((void*)0);
    int found = TRUE;
    for ( const char *iter = strtok_r ( tname, ".", &saveptr ); iter != ((void*)0); iter = strtok_r ( ((void*)0), ".", &saveptr ) ) {
        found = FALSE;
        ThemeWidget *f = rofi_theme_find_single ( widget, iter );
        if ( f != widget ) {
            widget = f;
            found = TRUE;
        }
        else if ( exact ) {
            break;
        }
    }
    g_free ( tname );
    if ( !exact || found ) {
        return widget;
    }
    else {
        return ((void*)0);
    }
}
