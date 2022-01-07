
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct access_sys {int encoded_url; int smb2; int * share_enum; int * smb2dir; int * smb2fh; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int smb2_closedir (int ,int *) ;
 int smb2_destroy_context (int ) ;
 int smb2_free_data (int ,int *) ;
 int vlc_UrlClean (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_smb2_close_fh (TYPE_1__*) ;
 int vlc_smb2_disconnect_share (TYPE_1__*) ;

__attribute__((used)) static void
Close(vlc_object_t *p_obj)
{
    stream_t *access = (stream_t *)p_obj;
    struct access_sys *sys = access->p_sys;

    if (sys->smb2fh != ((void*)0))
        vlc_smb2_close_fh(access);
    else if (sys->smb2dir != ((void*)0))
        smb2_closedir(sys->smb2, sys->smb2dir);
    else if (sys->share_enum != ((void*)0))
        smb2_free_data(sys->smb2, sys->share_enum);
    else
        vlc_assert_unreachable();

    vlc_smb2_disconnect_share(access);
    smb2_destroy_context(sys->smb2);

    vlc_UrlClean(&sys->encoded_url);
}
