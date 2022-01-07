
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct access_sys {scalar_t__ error_status; int eof; int smb2fh; int smb2; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int SEEK_SET ;
 int VLC_EGENERIC ;
 int VLC_SMB2_SET_ERROR (TYPE_1__*,char*,int) ;
 int VLC_SUCCESS ;
 scalar_t__ smb2_lseek (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
FileSeek(stream_t *access, uint64_t i_pos)
{
    struct access_sys *sys = access->p_sys;

    if (sys->error_status != 0)
        return VLC_EGENERIC;

    if (smb2_lseek(sys->smb2, sys->smb2fh, i_pos, SEEK_SET, ((void*)0)) < 0)
    {
        VLC_SMB2_SET_ERROR(access, "smb2_seek_async", 1);
        return VLC_EGENERIC;
    }
    sys->eof = 0;

    return VLC_SUCCESS;
}
