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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int config_dirty ; 
 int /*<<< orphan*/  config_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4( vlc_object_t *p_this )
{
    int ret = 0;

    FUNC0( p_this );

    FUNC2 (&config_lock);
    if (config_dirty)
    {
        /* Note: this will get the read lock recursively. Ok. */
        ret = FUNC1 (p_this);
        config_dirty = (ret != 0);
    }
    FUNC3 (&config_lock);

    return ret;
}