
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int file; } ;
typedef TYPE_2__ access_sys_t ;


 int VLC_SUCCESS ;
 int libssh2_sftp_seek (int ,int ) ;

__attribute__((used)) static int Seek( stream_t* p_access, uint64_t i_pos )
{
    access_sys_t *sys = p_access->p_sys;

    libssh2_sftp_seek( sys->file, i_pos );
    return VLC_SUCCESS;
}
