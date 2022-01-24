#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p_array; } ;
struct TYPE_8__ {TYPE_2__ runs; } ;
struct TYPE_6__ {scalar_t__ p_frame; } ;
struct TYPE_9__ {unsigned int i_chunk_count; TYPE_3__ context; TYPE_1__ asfinfo; int /*<<< orphan*/ * p_sample_size; int /*<<< orphan*/  i_sample_size; int /*<<< orphan*/ * chunk; scalar_t__ p_es; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_4__ mp4_track_t ;
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( es_out_t *out, mp4_track_t *p_track )
{
    FUNC2( &p_track->fmt );

    if( p_track->p_es )
        FUNC3( out, p_track->p_es );

    if( p_track->chunk )
    {
        for( unsigned int i_chunk = 0; i_chunk < p_track->i_chunk_count; i_chunk++ )
            FUNC0( &p_track->chunk[i_chunk] );
    }
    FUNC4( p_track->chunk );

    if( !p_track->i_sample_size )
        FUNC4( p_track->p_sample_size );

    if ( p_track->asfinfo.p_frame )
        FUNC1( p_track->asfinfo.p_frame );

    FUNC4( p_track->context.runs.p_array );
}