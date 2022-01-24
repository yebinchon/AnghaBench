#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_13__ {TYPE_1__* p_cmov; } ;
struct TYPE_14__ {int i_shortsize; struct TYPE_14__* p_first; struct TYPE_14__* p_next; struct TYPE_14__* p_father; TYPE_2__ data; int /*<<< orphan*/  i_type; scalar_t__ i_size; } ;
struct TYPE_12__ {TYPE_3__* p_moov; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  const ATOM_mdat ; 
 int /*<<< orphan*/  const ATOM_moof ; 
 int /*<<< orphan*/  const ATOM_moov ; 
 int /*<<< orphan*/  ATOM_root ; 
 int /*<<< orphan*/  const ATOM_sidx ; 
 int /*<<< orphan*/  ATOM_skip ; 
 scalar_t__ FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

MP4_Box_t *FUNC12( stream_t *p_stream )
{
    int i_result;

    MP4_Box_t *p_vroot = FUNC3( ATOM_root );
    if( p_vroot == NULL )
        return NULL;

    p_vroot->i_shortsize = 1;
    uint64_t i_size;
    if( FUNC10( p_stream, &i_size ) == 0 )
        p_vroot->i_size = i_size;

    /* First get the moov */
    {
        const uint32_t stoplist[] = { ATOM_moov, ATOM_mdat, 0 };
        i_result = FUNC4( p_stream, p_vroot, stoplist );
    }

    /* mdat appeared first */
    if( i_result && !FUNC2( p_vroot, "moov" ) )
    {
        bool b_seekable;
        if( FUNC9( p_stream, STREAM_CAN_SEEK, &b_seekable ) != VLC_SUCCESS || !b_seekable )
        {
            FUNC7( p_stream, "no moov before mdat and the stream is not seekable" );
            goto error;
        }

        /* continue loading up to moov */
        const uint32_t stoplist[] = { ATOM_moov, 0 };
        i_result = FUNC4( p_stream, p_vroot, stoplist );
    }

    if( !i_result )
        return p_vroot;

    /* If there is a mvex box, it means fragmented MP4, and we're done */
    if( FUNC0( p_vroot, "moov/mvex" ) > 0 )
    {
        /* Read a bit more atoms as we might have an index between moov and moof */
        const uint32_t stoplist[] = { ATOM_sidx, 0 };
        const uint32_t excludelist[] = { ATOM_moof, ATOM_mdat, 0 };
        FUNC5( p_stream, p_vroot, stoplist, excludelist, false );
        return p_vroot;
    }

    if( FUNC11( p_stream ) + 8 < (uint64_t) FUNC8( p_stream ) )
    {
        /* Get the rest of the file */
        i_result = FUNC4( p_stream, p_vroot, NULL );

        if( !i_result )
            goto error;
    }

    MP4_Box_t *p_moov;
    MP4_Box_t *p_cmov;

    /* check if there is a cmov, if so replace
      compressed moov by  uncompressed one */
    if( ( ( p_moov = FUNC2( p_vroot, "moov" ) ) &&
          ( p_cmov = FUNC2( p_vroot, "moov/cmov" ) ) ) ||
        ( ( p_moov = FUNC2( p_vroot, "foov" ) ) &&
          ( p_cmov = FUNC2( p_vroot, "foov/cmov" ) ) ) )
    {
        /* rename the compressed moov as a box to skip */
        p_moov->i_type = ATOM_skip;

        /* get uncompressed p_moov */
        p_moov = p_cmov->data.p_cmov->p_moov;
        p_cmov->data.p_cmov->p_moov = NULL;

        /* make p_root father of this new moov */
        p_moov->p_father = p_vroot;

        /* insert this new moov box as first child of p_root */
        p_moov->p_next = p_vroot->p_first;
        p_vroot->p_first = p_moov;
    }

    return p_vroot;

error:
    FUNC1( p_vroot );
    FUNC6( p_stream, 0 );
    return NULL;
}