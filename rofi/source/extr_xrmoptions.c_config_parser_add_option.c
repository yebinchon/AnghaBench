
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XrmOptionType ;
typedef int XrmOption ;
struct TYPE_5__ {void** pointer; } ;
struct TYPE_6__ {int type; char const* name; char const* comment; char* mem; int source; TYPE_1__ value; } ;


 int CONFIG_DEFAULT ;
 TYPE_2__* extra_options ;
 TYPE_2__* g_realloc (TYPE_2__*,int) ;
 int num_extra_options ;


void config_parser_add_option ( XrmOptionType type, const char *key, void **value, const char *comment )
{
    extra_options = g_realloc ( extra_options, ( num_extra_options + 1 ) * sizeof ( XrmOption ) );

    extra_options[num_extra_options].type = type;
    extra_options[num_extra_options].name = key;
    extra_options[num_extra_options].value.pointer = value;
    extra_options[num_extra_options].comment = comment;
    extra_options[num_extra_options].source = CONFIG_DEFAULT;
    switch ( type )
    {
    case 128:
        extra_options[num_extra_options].mem = ( (char *) ( *value ) );
        break;
    default:
        extra_options[num_extra_options].mem = ((void*)0);
        break;
    }

    num_extra_options++;
}
