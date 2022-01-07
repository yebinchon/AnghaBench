
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_14__ {TYPE_3__** pp_elems; } ;
struct TYPE_11__ {int chunk_count; int closed; TYPE_5__ hds_streams; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_12__ {int dl_lock; int dl_cond; TYPE_4__* chunks_downloadpos; TYPE_4__* chunks_head; } ;
typedef TYPE_3__ hds_stream_t ;
struct TYPE_13__ {scalar_t__ mdat_len; int data_len; int * data; struct TYPE_13__* next; int * mdat_data; int failed; } ;
typedef TYPE_4__ chunk_t ;


 int * download_chunk (TYPE_1__*,TYPE_2__*,TYPE_3__*,TYPE_4__*) ;
 scalar_t__ find_chunk_mdat (int *,int *,int *,int **) ;
 scalar_t__ vlc_array_count (TYPE_5__*) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void* download_thread( void* p )
{
    vlc_object_t* p_this = (vlc_object_t*)p;
    stream_t* s = (stream_t*) p_this;
    stream_sys_t* sys = s->p_sys;

    if ( vlc_array_count( &sys->hds_streams ) == 0 )
        return ((void*)0);


    hds_stream_t* hds_stream = sys->hds_streams.pp_elems[0];

    int canc = vlc_savecancel();

    vlc_mutex_lock( & hds_stream->dl_lock );

    while( ! sys->closed )
    {
        if( ! hds_stream->chunks_downloadpos )
        {
            chunk_t* chunk = hds_stream->chunks_head;
            while(chunk && chunk->data )
            {
                chunk = chunk->next;
            }

            if( chunk && ! chunk->data )
                hds_stream->chunks_downloadpos = chunk;
        }

        while( hds_stream->chunks_downloadpos )
        {
            chunk_t *chunk = hds_stream->chunks_downloadpos;

            uint8_t *data = download_chunk( (stream_t*)p_this,
                                            sys,
                                            hds_stream,
                                            chunk );

            if( ! chunk->failed )
            {
                chunk->mdat_len =
                    find_chunk_mdat( p_this,
                                     data,
                                     data + chunk->data_len,
                                     & chunk->mdat_data );
                if( chunk->mdat_len == 0 ) {
                    chunk->mdat_len = chunk->data_len - (chunk->mdat_data - data);
                }
                hds_stream->chunks_downloadpos = chunk->next;
                chunk->data = data;

                sys->chunk_count++;
            }
        }

        vlc_cond_wait( & hds_stream->dl_cond,
                       & hds_stream->dl_lock );
    }

    vlc_mutex_unlock( & hds_stream->dl_lock );

    vlc_restorecancel( canc );
    return ((void*)0);
}
