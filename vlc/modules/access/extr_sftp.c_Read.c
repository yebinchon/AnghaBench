
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int file; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ libssh2_sftp_read (int ,void*,size_t) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static ssize_t Read( stream_t *p_access, void *buf, size_t len )
{
    access_sys_t *p_sys = p_access->p_sys;

    ssize_t val = libssh2_sftp_read( p_sys->file, buf, len );
    if( val < 0 )
    {
        msg_Err( p_access, "read failed" );
        return 0;
    }

    return val;
}
