
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_xrm_database_t ;
struct TYPE_3__ {int connection; } ;
typedef TYPE_1__ xcb_stuff ;


 int CONFIG_XRESOURCES ;
 int __config_parse_xresource_options (int *,int ) ;
 int __config_parse_xresource_options_dynamic (int *,int ) ;
 int xcb_xrm_database_free (int *) ;
 int * xcb_xrm_database_from_default (int ) ;

void config_parse_xresource_options ( xcb_stuff *xcb )
{
    xcb_xrm_database_t *xDB = xcb_xrm_database_from_default ( xcb->connection );
    if ( xDB ) {
        __config_parse_xresource_options ( xDB, CONFIG_XRESOURCES );
        __config_parse_xresource_options_dynamic ( xDB, CONFIG_XRESOURCES );
        xcb_xrm_database_free ( xDB );
    }
}
