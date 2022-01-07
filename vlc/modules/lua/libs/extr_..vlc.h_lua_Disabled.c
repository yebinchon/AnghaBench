
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int var_InheritBool (int *,char*) ;

__attribute__((used)) static inline bool lua_Disabled( vlc_object_t *p_this )
{
    return !var_InheritBool( p_this, "lua" );
}
