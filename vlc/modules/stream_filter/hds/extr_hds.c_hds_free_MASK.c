#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int server_entry_count; TYPE_2__* chunks_head; int /*<<< orphan*/ * server_entries; int /*<<< orphan*/  movie_id; int /*<<< orphan*/  url; int /*<<< orphan*/  metadata; int /*<<< orphan*/  abst_url; int /*<<< orphan*/  quality_segment_modifier; } ;
typedef  TYPE_1__ hds_stream_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_2__ chunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4( hds_stream_t *p_stream )
{
    FUNC0( p_stream->quality_segment_modifier );

    FUNC0( p_stream->abst_url );

    FUNC2( p_stream );

    FUNC0( p_stream->metadata );
    FUNC0( p_stream->url );
    FUNC0( p_stream->movie_id );
    for( int i = 0; i < p_stream->server_entry_count; i++ )
    {
        FUNC0( p_stream->server_entries[i] );
    }

    chunk_t* chunk = p_stream->chunks_head;
    while( chunk )
    {
        chunk_t* next = chunk->next;
        FUNC1( chunk );
        chunk = next;
    }

    FUNC3( p_stream );
}