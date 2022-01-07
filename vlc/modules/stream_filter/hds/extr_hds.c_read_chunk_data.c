
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_10__ {scalar_t__ live; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_11__ {int afrt_timescale; int download_leadtime; int dl_cond; TYPE_4__* chunks_head; TYPE_4__* chunks_livereadpos; } ;
typedef TYPE_3__ hds_stream_t ;
struct TYPE_12__ {scalar_t__ mdat_pos; scalar_t__ mdat_len; unsigned int mdat_data; int duration; struct TYPE_12__* next; scalar_t__ eof; scalar_t__ failed; scalar_t__ data; } ;
typedef TYPE_4__ chunk_t ;


 int chunk_free (TYPE_4__*) ;
 void* generate_new_chunk (int *,TYPE_4__*,TYPE_3__*) ;
 int memcpy (int *,unsigned int,unsigned int) ;
 int vlc_cond_signal (int *) ;

__attribute__((used)) static unsigned read_chunk_data(
    vlc_object_t* p_this,
    uint8_t* buffer, unsigned read_len,
    hds_stream_t* stream )
{
    stream_t* s = (stream_t*) p_this;
    stream_sys_t* sys = s->p_sys;
    chunk_t* chunk = stream->chunks_head;
    uint8_t* buffer_start = buffer;
    bool dl = 0;

    if( chunk && chunk->eof && chunk->mdat_pos >= chunk->mdat_len )
        return 0;

    while( chunk && chunk->data && read_len > 0 && ! (chunk->eof && chunk->mdat_pos >= chunk->mdat_len ) )
    {



        chunk_t* next = chunk->next;

        if( chunk->mdat_pos < chunk->mdat_len )
        {
            unsigned cp_len = chunk->mdat_len - chunk->mdat_pos;
            if( cp_len > read_len )
                cp_len = read_len;
            memcpy( buffer, chunk->mdat_data + chunk->mdat_pos,
                    cp_len );

            read_len -= cp_len;
            buffer += cp_len;
            chunk->mdat_pos += cp_len;
        }

        if( ! sys->live && (chunk->mdat_pos >= chunk->mdat_len || chunk->failed) )
        {

            if( ! chunk->next && ! chunk->eof )
            {
                chunk->next = generate_new_chunk( p_this, chunk, stream );
                dl = 1;
            }

            if( ! chunk->eof )
            {
                chunk_free( chunk );
                chunk = next;
                stream->chunks_head = chunk;
            }
        }
        else if( sys->live && (chunk->mdat_pos >= chunk->mdat_len || chunk->failed) )
        {
            chunk = next;
        }
    }

    if( sys->live )
    {
        stream->chunks_livereadpos = chunk;
    }


    if( ! sys->live )
    {
        chunk = stream->chunks_head;
        if( chunk )
        {
            uint64_t total_duration = chunk->duration;
            while( chunk && total_duration/stream->afrt_timescale < stream->download_leadtime && ! chunk->eof )
            {
                if( ! chunk->next && ! chunk->eof )
                {
                    chunk->next = generate_new_chunk( p_this, chunk, stream );
                    dl = 1;
                }

                if( ! chunk->eof )
                {
                    chunk = chunk->next;
                    if( chunk )
                    {
                        total_duration += chunk->duration;
                    }
                }
            }
        }

        if( dl )
            vlc_cond_signal( & stream->dl_cond );
    }

    return ( ((uint8_t*)buffer) - ((uint8_t*)buffer_start));
}
