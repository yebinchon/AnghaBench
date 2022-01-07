
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int picture_t ;


 int VOUT_SPU_CHANNEL_OSD ;
 scalar_t__ VoutSnapshotPip (int *,int *) ;
 int msg_Dbg (int *,char*,char const*) ;
 int msg_Warn (int *,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int vout_OSDMessage (int *,int ,char*,char const*) ;

__attribute__((used)) static void VoutOsdSnapshot( vout_thread_t *p_vout, picture_t *p_pic, const char *psz_filename )
{
    msg_Dbg( p_vout, "snapshot taken (%s)", psz_filename );
    vout_OSDMessage( p_vout, VOUT_SPU_CHANNEL_OSD, "%s", psz_filename );

    if( var_InheritBool( p_vout, "snapshot-preview" ) )
    {
        if( VoutSnapshotPip( p_vout, p_pic ) )
            msg_Warn( p_vout, "Failed to display snapshot" );
    }
}
