
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int stream_t ;
struct TYPE_7__ {scalar_t__ i_chunk_fourcc; TYPE_2__* p_first; TYPE_2__* p_next; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
typedef TYPE_2__ avi_chunk_t ;
struct TYPE_9__ {int (* AVI_ChunkFree_function ) (TYPE_2__*) ;} ;


 int AVI_ChunkFunctionFind (scalar_t__) ;
 TYPE_5__* AVI_Chunk_Function ;
 int free (TYPE_2__*) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Warn (int *,char*,char*) ;
 int stub1 (TYPE_2__*) ;

void AVI_ChunkClean( stream_t *s,
                     avi_chunk_t *p_chk )
{
    int i_index;
    avi_chunk_t *p_child, *p_next;

    if( !p_chk )
    {
        return;
    }


    p_child = p_chk->common.p_first;
    while( p_child )
    {
        p_next = p_child->common.p_next;
        AVI_ChunkClean( s, p_child );
        free( p_child );
        p_child = p_next;
    }

    i_index = AVI_ChunkFunctionFind( p_chk->common.i_chunk_fourcc );
    if( AVI_Chunk_Function[i_index].AVI_ChunkFree_function )
    {




        AVI_Chunk_Function[i_index].AVI_ChunkFree_function( p_chk);
    }
    else if( p_chk->common.i_chunk_fourcc != 0 )
    {
        msg_Warn( (vlc_object_t*)s, "unknown chunk: %4.4s (not unloaded)",
                (char*)&p_chk->common.i_chunk_fourcc );
    }
    p_chk->common.p_first = ((void*)0);

    return;
}
