
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int Start_LuaIntf (int *,char*) ;

int Open_LuaHTTP( vlc_object_t *p_this )
{
    return Start_LuaIntf( p_this, "http" );
}
