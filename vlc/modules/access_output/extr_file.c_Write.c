
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_8__ {int* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_9__ {size_t i_buffer; int p_buffer; struct TYPE_9__* p_next; } ;
typedef TYPE_2__ block_t ;


 scalar_t__ EINTR ;
 int block_ChainRelease (TYPE_2__*) ;
 int block_Release (TYPE_2__*) ;
 scalar_t__ errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 scalar_t__ write (int,int ,size_t) ;

__attribute__((used)) static ssize_t Write( sout_access_out_t *p_access, block_t *p_buffer )
{
    int *fdp = p_access->p_sys, fd = *fdp;
    size_t i_write = 0;

    while( p_buffer )
    {
        ssize_t val = write(fd, p_buffer->p_buffer, p_buffer->i_buffer);
        if (val <= 0)
        {
            if (errno == EINTR)
                continue;
            block_ChainRelease (p_buffer);
            msg_Err( p_access, "cannot write: %s", vlc_strerror_c(errno) );
            return -1;
        }

        if ((size_t)val >= p_buffer->i_buffer)
        {
            block_t *p_next = p_buffer->p_next;
            block_Release (p_buffer);
            p_buffer = p_next;
        }
        else
        {
            p_buffer->p_buffer += val;
            p_buffer->i_buffer -= val;
        }
        i_write += val;
    }
    return i_write;
}
