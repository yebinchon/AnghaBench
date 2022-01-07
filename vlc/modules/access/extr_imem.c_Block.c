
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_8__ {int cookie; int data; int (* release ) (int ,int ,size_t,void*) ;scalar_t__ (* get ) (int ,int ,int *,int *,unsigned int*,size_t*,void**) ;} ;
struct TYPE_10__ {TYPE_1__ source; } ;
typedef TYPE_3__ imem_sys_t ;
struct TYPE_11__ {int p_buffer; } ;
typedef TYPE_4__ block_t ;


 TYPE_4__* block_Alloc (size_t) ;
 int memcpy (int ,void*,size_t) ;
 scalar_t__ stub1 (int ,int ,int *,int *,unsigned int*,size_t*,void**) ;
 int stub2 (int ,int ,size_t,void*) ;

__attribute__((used)) static block_t *Block(stream_t *access, bool *restrict eof)
{
    imem_sys_t *sys = (imem_sys_t*)access->p_sys;

    unsigned flags;
    size_t buffer_size;
    void *buffer;

    if (sys->source.get(sys->source.data, sys->source.cookie,
                        ((void*)0), ((void*)0), &flags, &buffer_size, &buffer)) {
        *eof = 1;
        return ((void*)0);
    }

    block_t *block = ((void*)0);
    if (buffer_size > 0) {
        block = block_Alloc(buffer_size);
        if (block)
            memcpy(block->p_buffer, buffer, buffer_size);
    }

    sys->source.release(sys->source.data, sys->source.cookie,
                        buffer_size, buffer);
    return block;
}
