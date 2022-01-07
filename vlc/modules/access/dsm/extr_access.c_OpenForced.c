
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int Open (int *) ;
 int VLC_EGENERIC ;
 int msg_Warn (int *,char*) ;
 int var_InheritBool (int *,char*) ;

__attribute__((used)) static int OpenForced( vlc_object_t *p_this )
{
    if( !var_InheritBool( p_this , "smb-force-v1" ) )
        return VLC_EGENERIC;

    msg_Warn( p_this, "SMB 2/3 disabled by the user, using *unsafe* SMB 1" );
    return Open( p_this );
}
