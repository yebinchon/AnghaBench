#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_11__ {scalar_t__ i_chunk_fourcc; TYPE_2__* p_father; } ;
struct TYPE_12__ {TYPE_1__ common; } ;
typedef  TYPE_2__ avi_chunk_t ;
struct TYPE_13__ {int (* AVI_ChunkRead_function ) (int /*<<< orphan*/ *,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ AVIFOURCC_indx ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_5__* AVI_Chunk_Function ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int AVI_ZERO_FOURCC ; 
 int VLC_EGENERIC ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int  FUNC7( stream_t *s, avi_chunk_t *p_chk, avi_chunk_t *p_father )
{
    int i_index;

    if( !p_chk )
    {
        FUNC5( (vlc_object_t*)s, "cannot read null chunk" );
        return VLC_EGENERIC;
    }

    if( FUNC1( s, p_chk, p_father ) )
        return VLC_EGENERIC;

    if( p_chk->common.i_chunk_fourcc == FUNC4( 0, 0, 0, 0 ) )
    {
        FUNC5( (vlc_object_t*)s, "found null fourcc chunk (corrupted file?)" );
        return AVI_ZERO_FOURCC;
    }
    p_chk->common.p_father = p_father;

    i_index = FUNC0( p_chk->common.i_chunk_fourcc );
    if( AVI_Chunk_Function[i_index].AVI_ChunkRead_function )
    {
        return AVI_Chunk_Function[i_index].AVI_ChunkRead_function( s, p_chk );
    }
    else if( ( ((char*)&p_chk->common.i_chunk_fourcc)[0] == 'i' &&
               ((char*)&p_chk->common.i_chunk_fourcc)[1] == 'x' ) ||
             ( ((char*)&p_chk->common.i_chunk_fourcc)[2] == 'i' &&
               ((char*)&p_chk->common.i_chunk_fourcc)[3] == 'x' ) )
    {
        p_chk->common.i_chunk_fourcc = AVIFOURCC_indx;
        return FUNC2( s, p_chk );
    }

    FUNC5( (vlc_object_t*)s, "unknown chunk: %4.4s (not loaded)",
            (char*)&p_chk->common.i_chunk_fourcc );
    return FUNC3( s, p_chk );
}