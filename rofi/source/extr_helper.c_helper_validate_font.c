
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int PangoFontDescription ;


 int FALSE ;
 int TRUE ;
 int g_debug (char*,char const*,...) ;
 char* pango_font_description_get_family (int *) ;
 int pango_font_description_get_size (int *) ;

gboolean helper_validate_font ( PangoFontDescription *pfd, const char *font )
{
    const char *fam = pango_font_description_get_family ( pfd );
    int size = pango_font_description_get_size ( pfd );
    if ( fam == ((void*)0) || size == 0 ) {
        g_debug ( "Pango failed to parse font: '%s'", font );
        g_debug ( "Got family: <b>%s</b> at size: <b>%d</b>", fam ? fam : "{unknown}", size );
        return FALSE;
    }
    return TRUE;
}
