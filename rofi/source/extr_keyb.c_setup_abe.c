
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t gsize ;
struct TYPE_4__ {int comment; int binding; int name; } ;
typedef TYPE_1__ ActionBindingEntry ;


 size_t G_N_ELEMENTS (TYPE_1__*) ;
 int config_parser_add_option (int ,int ,void**,int ) ;
 int g_strdup (int ) ;
 TYPE_1__* rofi_bindings ;
 int xrm_String ;

void setup_abe ( void )
{
    for ( gsize i = 0; i < G_N_ELEMENTS ( rofi_bindings ); ++i ) {
        ActionBindingEntry *b = &rofi_bindings[i];
        b->binding = g_strdup ( b->binding );
        config_parser_add_option ( xrm_String, b->name, (void * *) &( b->binding ), b->comment );
    }
}
