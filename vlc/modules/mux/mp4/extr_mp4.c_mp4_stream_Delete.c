
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_first; } ;
struct TYPE_7__ {TYPE_3__* p_first; } ;
struct TYPE_9__ {struct TYPE_9__* p_indexentries; TYPE_2__ towrite; int p_block; struct TYPE_9__* p_next; TYPE_1__ read; struct TYPE_9__* p_held_entry; scalar_t__ extrabuilder; } ;
typedef TYPE_3__ mp4_stream_t ;
typedef TYPE_3__ mp4_fragentry_t ;


 int block_Release (int ) ;
 int free (TYPE_3__*) ;
 int mux_extradata_builder_Delete (scalar_t__) ;

__attribute__((used)) static void mp4_stream_Delete(mp4_stream_t *p_stream)
{
    if(p_stream->extrabuilder)
        mux_extradata_builder_Delete(p_stream->extrabuilder);


    if (p_stream->p_held_entry)
    {
        block_Release(p_stream->p_held_entry->p_block);
        free(p_stream->p_held_entry);
    }
    while(p_stream->read.p_first)
    {
        mp4_fragentry_t *p_next = p_stream->read.p_first->p_next;
        block_Release(p_stream->read.p_first->p_block);
        free(p_stream->read.p_first);
        p_stream->read.p_first = p_next;
    }
    while(p_stream->towrite.p_first)
    {
        mp4_fragentry_t *p_next = p_stream->towrite.p_first->p_next;
        block_Release(p_stream->towrite.p_first->p_block);
        free(p_stream->towrite.p_first);
        p_stream->towrite.p_first = p_next;
    }
    free(p_stream->p_indexentries);

    free(p_stream);
}
