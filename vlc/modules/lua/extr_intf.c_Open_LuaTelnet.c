
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int Start_LuaIntf (int *,char*) ;
 int VLC_EGENERIC ;
 int free (char*) ;
 int msg_Err (int *,char*) ;
 int msg_Info (int *,char*) ;
 char* var_CreateGetNonEmptyString (int *,char*) ;

int Open_LuaTelnet( vlc_object_t *p_this )
{
    char *pw = var_CreateGetNonEmptyString( p_this, "telnet-password" );
    if( pw == ((void*)0) )
    {
        msg_Err( p_this, "password not configured" );
        msg_Info( p_this, "Please specify the password in the preferences." );
        return VLC_EGENERIC;
    }
    free( pw );
    return Start_LuaIntf( p_this, "telnet" );
}
