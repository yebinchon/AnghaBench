
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ Mode ;


 TYPE_1__** available_modi ;
 scalar_t__ g_strcmp0 (char const*,int ) ;
 unsigned int num_available_modi ;

Mode * rofi_collect_modi_search ( const char *name )
{
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        if ( g_strcmp0 ( name, available_modi[i]->name ) == 0 ) {
            return available_modi[i];
        }
    }
    return ((void*)0);
}
