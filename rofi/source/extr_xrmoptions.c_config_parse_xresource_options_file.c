
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_xrm_database_t ;


 int CONFIG_FILE ;
 int __config_parse_xresource_options (int *,int ) ;
 int __config_parse_xresource_options_dynamic (int *,int ) ;
 int xcb_xrm_database_free (int *) ;
 int * xcb_xrm_database_from_file (char const*) ;

void config_parse_xresource_options_file ( const char *filename )
{
    if ( !filename ) {
        return;
    }

    xcb_xrm_database_t *xDB = xcb_xrm_database_from_file ( filename );
    if ( xDB == ((void*)0) ) {
        return;
    }
    __config_parse_xresource_options ( xDB, CONFIG_FILE );
    __config_parse_xresource_options_dynamic ( xDB, CONFIG_FILE );
    xcb_xrm_database_free ( xDB );
}
