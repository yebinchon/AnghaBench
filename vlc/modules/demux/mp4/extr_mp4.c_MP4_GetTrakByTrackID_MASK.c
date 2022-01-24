#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ const i_track_ID; } ;
struct TYPE_8__ {scalar_t__ i_type; struct TYPE_8__* p_next; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ ATOM_trak ; 
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static MP4_Box_t * FUNC2( MP4_Box_t *p_moov, const uint32_t i_id )
{
    MP4_Box_t *p_trak = FUNC1( p_moov, "trak" );
    MP4_Box_t *p_tkhd;
    while( p_trak )
    {
        if( p_trak->i_type == ATOM_trak &&
            (p_tkhd = FUNC1( p_trak, "tkhd" )) && FUNC0(p_tkhd) &&
            FUNC0(p_tkhd)->i_track_ID == i_id )
                break;
        else
            p_trak = p_trak->p_next;
    }
    return p_trak;
}