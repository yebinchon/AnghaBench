
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EXTENSION_WIDGET_TEXT_FIELD ;
 int vlclua_dialog_add_text_inner (int *,int ) ;

__attribute__((used)) static inline int vlclua_dialog_add_text_input( lua_State *L )
{
    return vlclua_dialog_add_text_inner( L, EXTENSION_WIDGET_TEXT_FIELD );
}
