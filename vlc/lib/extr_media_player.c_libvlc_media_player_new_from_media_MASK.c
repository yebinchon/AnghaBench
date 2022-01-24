#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  p_input_item; int /*<<< orphan*/  p_libvlc_instance; } ;
typedef  TYPE_1__ libvlc_media_t ;
struct TYPE_11__ {TYPE_1__* p_md; int /*<<< orphan*/  player; } ;
typedef  TYPE_2__ libvlc_media_player_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

libvlc_media_player_t *
FUNC8( libvlc_media_t * p_md )
{
    libvlc_media_player_t * p_mi;

    p_mi = FUNC0( p_md->p_libvlc_instance );
    if( !p_mi )
        return NULL;

    FUNC2( p_md );
    p_mi->p_md = p_md;
    FUNC3(p_md);

    FUNC5(p_mi->player);
    int ret = FUNC6(p_mi->player, p_md->p_input_item);
    FUNC7(p_mi->player);

    if (ret != VLC_SUCCESS)
    {
        FUNC4(p_md);
        FUNC1(p_md);
        p_mi->p_md = NULL;
        return NULL;
    }

    return p_mi;
}