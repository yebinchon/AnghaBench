
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int server_entry_count; TYPE_2__* chunks_head; int * server_entries; int movie_id; int url; int metadata; int abst_url; int quality_segment_modifier; } ;
typedef TYPE_1__ hds_stream_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ chunk_t ;


 int FREENULL (int ) ;
 int chunk_free (TYPE_2__*) ;
 int cleanup_threading (TYPE_1__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void hds_free( hds_stream_t *p_stream )
{
    FREENULL( p_stream->quality_segment_modifier );

    FREENULL( p_stream->abst_url );

    cleanup_threading( p_stream );

    FREENULL( p_stream->metadata );
    FREENULL( p_stream->url );
    FREENULL( p_stream->movie_id );
    for( int i = 0; i < p_stream->server_entry_count; i++ )
    {
        FREENULL( p_stream->server_entries[i] );
    }

    chunk_t* chunk = p_stream->chunks_head;
    while( chunk )
    {
        chunk_t* next = chunk->next;
        chunk_free( chunk );
        chunk = next;
    }

    free( p_stream );
}
