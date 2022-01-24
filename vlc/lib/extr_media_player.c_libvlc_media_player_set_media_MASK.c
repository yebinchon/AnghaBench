#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  p_libvlc_instance; int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ libvlc_media_t ;
struct TYPE_10__ {int /*<<< orphan*/  player; int /*<<< orphan*/  p_libvlc_instance; TYPE_1__* p_md; } ;
typedef  TYPE_2__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(
                            libvlc_media_player_t *p_mi,
                            libvlc_media_t *p_md )
{
    FUNC4(p_mi->player);

    if (p_mi->p_md)
        FUNC3(p_mi->p_md);

    FUNC0( p_mi->p_md );

    if( p_md )
    {
        FUNC1( p_md );
        FUNC2(p_md);
    }
    p_mi->p_md = p_md;

    FUNC5(p_mi->player, p_md->p_input_item);

    /* The policy here is to ignore that we were created using a different
     * libvlc_instance, because we don't really care */
    p_mi->p_libvlc_instance = p_md->p_libvlc_instance;

    FUNC6(p_mi->player);
}