
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ extension_widget_t ;


 int EXTENSION_WIDGET_LIST ;
 TYPE_1__* calloc (int,int) ;
 int vlclua_create_widget_inner (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int vlclua_dialog_add_list( lua_State *L )
{
    extension_widget_t *p_widget = calloc( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_LIST;

    return vlclua_create_widget_inner( L, 0, p_widget );
}
