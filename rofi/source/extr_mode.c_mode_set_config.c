
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int display_name; int cfg_name_key; } ;
typedef TYPE_1__ Mode ;


 int config_parser_add_option (int ,int ,void**,char*) ;
 int snprintf (int ,int,char*,char*) ;
 int xrm_String ;

void mode_set_config ( Mode *mode )
{
    snprintf ( mode->cfg_name_key, 128, "display-%s", mode->name );
    config_parser_add_option ( xrm_String, mode->cfg_name_key, (void * *) &( mode->display_name ), "The display name of this browser" );
}
