
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;
struct TYPE_12__ {int fd; int blocksize; } ;
typedef TYPE_3__ access_sys_t ;


 scalar_t__ AccessPoll (TYPE_1__*) ;
 TYPE_2__* block_Alloc (int ) ;
 int block_Release (TYPE_2__*) ;
 int errno ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ v4l2_read (int ,int ,scalar_t__) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static block_t *ReadBlock (stream_t *access, bool *restrict eof)
{
    access_sys_t *sys = access->p_sys;

    if (AccessPoll (access))
        return ((void*)0);

    block_t *block = block_Alloc (sys->blocksize);
    if (unlikely(block == ((void*)0)))
        return ((void*)0);

    ssize_t val = v4l2_read (sys->fd, block->p_buffer, block->i_buffer);
    if (val < 0)
    {
        block_Release (block);
        msg_Err (access, "cannot read buffer: %s", vlc_strerror_c(errno));
        *eof = 1;
        return ((void*)0);
    }

    block->i_buffer = val;
    return block;
}
