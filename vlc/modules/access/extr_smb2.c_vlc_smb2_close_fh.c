
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct access_sys {int * smb2fh; int smb2; } ;
struct TYPE_6__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int VLC_SMB2_SET_ERROR (TYPE_1__*,char*,int) ;
 int assert (int *) ;
 scalar_t__ smb2_close_async (int ,int *,int ,TYPE_1__*) ;
 int smb2_generic_cb ;
 int vlc_smb2_mainloop (TYPE_1__*,int) ;

__attribute__((used)) static int
vlc_smb2_close_fh(stream_t *access)
{
    struct access_sys *sys = access->p_sys;

    assert(sys->smb2fh);

    if (smb2_close_async(sys->smb2, sys->smb2fh, smb2_generic_cb, access) < 0)
    {
        VLC_SMB2_SET_ERROR(access, "smb2_close_async", 1);
        return -1;
    }

    sys->smb2fh = ((void*)0);

    return vlc_smb2_mainloop(access, 1);
}
