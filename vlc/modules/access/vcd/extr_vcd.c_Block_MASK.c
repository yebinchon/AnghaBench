#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* p_sectors; int /*<<< orphan*/  i_tracks; } ;
typedef  TYPE_3__ vcddev_toc_t ;
struct TYPE_17__ {TYPE_6__* p_sys; } ;
typedef  TYPE_4__ stream_t ;
struct TYPE_18__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_19__ {int i_sector; int i_current_title; int i_current_seekpoint; scalar_t__ offset; TYPE_2__* titles; int /*<<< orphan*/  vcddev; TYPE_3__* p_toc; } ;
typedef  TYPE_6__ access_sys_t ;
struct TYPE_15__ {scalar_t__ count; scalar_t__* seekpoints; } ;
struct TYPE_14__ {int i_lba; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VCD_BLOCKS_ONCE ; 
 int VCD_DATA_SIZE ; 
 int /*<<< orphan*/  VCD_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_5__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 

__attribute__((used)) static block_t *FUNC7( stream_t *p_access, bool *restrict eof )
{
    access_sys_t *p_sys = p_access->p_sys;
    const vcddev_toc_t *p_toc = p_sys->p_toc;
    int i_blocks = VCD_BLOCKS_ONCE;
    block_t *p_block;

    /* Check end of title */
    while( p_sys->i_sector >= p_toc->p_sectors[p_sys->i_current_title + 2].i_lba )
    {
        if( p_sys->i_current_title + 2 >= FUNC0(p_toc->i_tracks) )
        {
            *eof = true;
            return NULL;
        }

        p_sys->i_current_title++;
        p_sys->i_current_seekpoint = 0;
        p_sys->offset = 0;
    }

    /* Don't read after the end of a title */
    if( p_sys->i_sector + i_blocks >=
        p_toc->p_sectors[p_sys->i_current_title + 2].i_lba )
    {
        i_blocks = p_toc->p_sectors[p_sys->i_current_title + 2 ].i_lba - p_sys->i_sector;
    }

    /* Do the actual reading */
    if( i_blocks < 0 || !( p_block = FUNC2( i_blocks * VCD_DATA_SIZE ) ) )
    {
        FUNC6( p_access, "cannot get a new block of size: %i",
                 i_blocks * VCD_DATA_SIZE );
        return NULL;
    }

    if( FUNC4( FUNC1(p_access), p_sys->vcddev,
            p_sys->i_sector, p_block->p_buffer, i_blocks, VCD_TYPE ) < 0 )
    {
        FUNC6( p_access, "cannot read sector %i", p_sys->i_sector );
        FUNC3( p_block );

        /* Try to skip one sector (in case of bad sectors) */
        p_sys->offset += VCD_DATA_SIZE;
        p_sys->i_sector++;
        return NULL;
    }

    /* Update seekpoints */
    for( int i_read = 0; i_read < i_blocks; i_read++ )
    {
        int i_title = p_sys->i_current_title;

        if( p_sys->titles[i_title].count > 0 &&
            p_sys->i_current_seekpoint + 1 < p_sys->titles[i_title].count &&
                (p_sys->offset + i_read * VCD_DATA_SIZE) >=
            p_sys->titles[i_title].seekpoints[p_sys->i_current_seekpoint + 1] )
        {
            FUNC5( p_access, "seekpoint change" );
            p_sys->i_current_seekpoint++;
        }
    }

    /* Update a few values */
    p_sys->offset += p_block->i_buffer;
    p_sys->i_sector += i_blocks;

    return p_block;
}