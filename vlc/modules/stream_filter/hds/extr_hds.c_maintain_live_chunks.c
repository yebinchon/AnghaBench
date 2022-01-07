
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint64_t ;
struct TYPE_7__ {int live_current_time; TYPE_2__* chunks_head; TYPE_2__* chunks_livereadpos; int dl_cond; scalar_t__ afrt_timescale; scalar_t__ timescale; } ;
typedef TYPE_1__ hds_stream_t ;
struct TYPE_8__ {int timestamp; scalar_t__ mdat_pos; scalar_t__ mdat_len; struct TYPE_8__* next; scalar_t__ data; } ;
typedef TYPE_2__ chunk_t ;


 int chunk_free (TYPE_2__*) ;
 void* generate_new_chunk (int *,TYPE_2__*,TYPE_1__*) ;
 int vlc_cond_signal (int *) ;

__attribute__((used)) static void maintain_live_chunks(
    vlc_object_t* p_this,
    hds_stream_t* hds_stream
    )
{
    if( ! hds_stream->chunks_head )
    {




        hds_stream->chunks_head = generate_new_chunk(
            p_this, 0, hds_stream );
        hds_stream->chunks_livereadpos = hds_stream->chunks_head;
    }

    chunk_t* chunk = hds_stream->chunks_head;
    bool dl = 0;
    while( chunk && ( chunk->timestamp * ((uint64_t)hds_stream->timescale) )
           / ((uint64_t)hds_stream->afrt_timescale)
           <= hds_stream->live_current_time )
    {
        if( chunk->next )
        {
            chunk = chunk->next;
        }
        else
        {
            chunk->next = generate_new_chunk( p_this, chunk, hds_stream );
            chunk = chunk->next;
            dl = 1;
        }
    }

    if( dl )
        vlc_cond_signal( & hds_stream->dl_cond );

    chunk = hds_stream->chunks_head;
    while( chunk && chunk->data && chunk->mdat_pos >= chunk->mdat_len && chunk->next )
    {
        chunk_t* next_chunk = chunk->next;
        chunk_free( chunk );
        chunk = next_chunk;
    }

    if( ! hds_stream->chunks_livereadpos )
        hds_stream->chunks_livereadpos = hds_stream->chunks_head;

    hds_stream->chunks_head = chunk;
}
