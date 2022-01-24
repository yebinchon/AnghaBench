#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/ * p_vout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  on_new_video_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC2( struct decoder_owner *p_owner,
                                          bool lost )
{
    unsigned displayed = 0;
    unsigned vout_lost = 0;
    if( p_owner->p_vout != NULL )
    {
        FUNC1( p_owner->p_vout, &displayed, &vout_lost );
    }
    if (lost) vout_lost++;

    FUNC0(p_owner, on_new_video_stats, 1, vout_lost, displayed);
}