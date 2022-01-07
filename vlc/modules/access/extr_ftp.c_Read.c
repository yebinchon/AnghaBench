
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int offset; int * data; int out; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 scalar_t__ vlc_tls_Read (int *,void*,size_t,int) ;

__attribute__((used)) static ssize_t Read( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->data == ((void*)0) )
        return 0;
    assert( !p_sys->out );

    ssize_t i_read = vlc_tls_Read( p_sys->data, p_buffer, i_len, 0 );
    if( i_read >= 0 )
        p_sys->offset += i_read;
    else if( errno != EINTR && errno != EAGAIN )
    {
        msg_Err( p_access, "receive error: %s", vlc_strerror_c(errno) );
        i_read = 0;
    }

    return i_read;
}
