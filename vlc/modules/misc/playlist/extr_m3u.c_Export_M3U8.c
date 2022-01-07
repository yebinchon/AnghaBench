
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_playlist_export {int dummy; } ;


 int DoExport (struct vlc_playlist_export*,int ) ;
 int VLC_SUCCESS ;
 int fprintf ;
 int msg_Dbg (struct vlc_playlist_export*,char*) ;

int Export_M3U8( vlc_object_t *p_this )
{
    struct vlc_playlist_export *p_export = (struct vlc_playlist_export *) p_this;

    msg_Dbg( p_export, "saving using M3U8 format");

    DoExport(p_export, fprintf);
    return VLC_SUCCESS;
}
