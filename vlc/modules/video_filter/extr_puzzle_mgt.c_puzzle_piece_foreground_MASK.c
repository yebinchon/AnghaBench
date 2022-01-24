#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_11__ {size_t i_group_ID; } ;
typedef  TYPE_2__ piece_t ;
typedef  size_t int32_t ;
struct TYPE_12__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_10__ {int i_pieces_nbr; } ;
struct TYPE_13__ {TYPE_2__* ps_pieces; TYPE_1__ s_allocated; } ;
typedef  TYPE_4__ filter_sys_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 

int FUNC3( filter_t *p_filter, int32_t i_piece) {
    filter_sys_t *p_sys = p_filter->p_sys;
    piece_t *ps_pieces_tmp;        /* list [piece] of pieces data. Sort as per layers */
    uint32_t i_group_ID = p_sys->ps_pieces[i_piece].i_group_ID;

    ps_pieces_tmp = FUNC1( sizeof( piece_t) * p_sys->s_allocated.i_pieces_nbr );
    if (!ps_pieces_tmp)
        return VLC_ENOMEM;

    int32_t j=0;

    FUNC2( &ps_pieces_tmp[j], &p_sys->ps_pieces[i_piece], sizeof(piece_t) );
    j++;

    for (uint32_t i = 0; i < p_sys->s_allocated.i_pieces_nbr; i++) {
        if ( ( p_sys->ps_pieces[i].i_group_ID == i_group_ID ) && ( (int32_t)i != i_piece ) ) {
            FUNC2( &ps_pieces_tmp[j], &p_sys->ps_pieces[i], sizeof(piece_t));
            j++;
        }
    }
    for (uint32_t i = 0; i < p_sys->s_allocated.i_pieces_nbr; i++) {
        if ( p_sys->ps_pieces[i].i_group_ID != i_group_ID ) {
            FUNC2( &ps_pieces_tmp[j], &p_sys->ps_pieces[i], sizeof(piece_t));
            j++;
        }
    }

    FUNC0( p_sys->ps_pieces );
    p_sys->ps_pieces = ps_pieces_tmp;

    return VLC_SUCCESS;
}