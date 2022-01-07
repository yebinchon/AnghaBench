
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
 int assert (int) ;
 int block_ChainRelease (TYPE_2__*) ;
 int block_Release (TYPE_2__*) ;
 scalar_t__ errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int vlc_strerror_c (scalar_t__) ;
 scalar_t__ vlc_write (int,int ,size_t) ;

__attribute__((used)) static ssize_t WritePipe(sout_access_out_t *access, block_t *block)
{
    int *fdp = access->p_sys, fd = *fdp;
    ssize_t total = 0;

    while (block != ((void*)0))
    {
        if (block->i_buffer == 0)
        {
            block_t *next = block->p_next;
            block_Release(block);
            block = next;
            continue;
        }


        ssize_t val = vlc_write(fd, block->p_buffer, block->i_buffer);
        if (val < 0)
        {
            if (errno == EINTR)
                continue;

            block_ChainRelease(block);
            msg_Err(access, "cannot write: %s", vlc_strerror_c(errno));
            total = -1;
            break;
        }

        total += val;

        assert((size_t)val <= block->i_buffer);
        block->p_buffer += val;
        block->i_buffer -= val;
    }

    return total;
}
