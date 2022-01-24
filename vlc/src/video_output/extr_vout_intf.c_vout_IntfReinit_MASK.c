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
typedef  int /*<<< orphan*/  vout_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

void FUNC1( vout_thread_t *p_vout )
{
    FUNC0( p_vout, "video-on-top" );
    FUNC0( p_vout, "video-wallpaper" );

    FUNC0( p_vout, "video-filter" );
    FUNC0( p_vout, "sub-source" );
    FUNC0( p_vout, "sub-filter" );
    FUNC0( p_vout, "sub-margin" );
    FUNC0( p_vout, "secondary-sub-margin" );
}