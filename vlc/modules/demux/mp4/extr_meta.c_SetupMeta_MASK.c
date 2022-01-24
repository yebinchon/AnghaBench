#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int i_handler; scalar_t__ p_father; struct TYPE_8__* p_next; struct TYPE_8__* p_first; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
#define  HANDLER_ID32 130 
#define  HANDLER_mdir 129 
#define  HANDLER_mdta 128 
 TYPE_1__* FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

void FUNC4( vlc_meta_t *p_meta, MP4_Box_t *p_udta )
{
    uint32_t i_handler = 0;
    if ( p_udta->p_father )
        i_handler = p_udta->i_handler;

    for( MP4_Box_t *p_box = p_udta->p_first; p_box; p_box = p_box->p_next )
    {
        switch( i_handler )
        {
            case HANDLER_mdta:
            {
                MP4_Box_t *p_keys = FUNC0( p_udta->p_father, "keys" );
                FUNC3( p_meta, p_box, p_keys );
                break;
            }

            case HANDLER_ID32:
                FUNC1( p_meta, p_box );
                break;

            case HANDLER_mdir:
            default:
                FUNC2( p_meta, p_box );
                break;
        }
    }
}