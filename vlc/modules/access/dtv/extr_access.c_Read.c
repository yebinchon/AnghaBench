
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_9__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;
struct TYPE_10__ {int dev; } ;
typedef TYPE_3__ access_sys_t ;


 int BUFSIZE ;
 TYPE_2__* block_Alloc (int ) ;
 int block_Release (TYPE_2__*) ;
 scalar_t__ dvb_read (int ,int ,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static block_t *Read (stream_t *access, bool *restrict eof)
{

    block_t *block = block_Alloc ((20*188));
    if (unlikely(block == ((void*)0)))
        return ((void*)0);

    access_sys_t *sys = access->p_sys;
    ssize_t val = dvb_read (sys->dev, block->p_buffer, (20*188), -1);

    if (val <= 0)
    {
        if (val == 0)
            *eof = 1;
        block_Release (block);
        return ((void*)0);
    }

    block->i_buffer = val;

    return block;
}
