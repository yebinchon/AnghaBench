
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;


 int g_free (int *) ;
 int * g_markup_escape_text (int *,int) ;

gchar *rofi_escape_markup ( gchar *text )
{
    if ( text == ((void*)0) ) {
        return ((void*)0);
    }
    gchar *ret = g_markup_escape_text ( text, -1 );
    g_free ( text );
    return ret;
}
