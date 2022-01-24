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

/* Variables and functions */
 int PICTURES ; 
 int /*<<< orphan*/  VLC_CODEC_I420 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fmt ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * pool ; 
 int /*<<< orphan*/ * reserve ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

int FUNC7(void)
{
    FUNC6(&fmt, VLC_CODEC_I420, 320, 200, 320, 200, 1, 1);

    pool = FUNC2(&fmt, PICTURES);
    FUNC0(pool != NULL);
    FUNC0(FUNC1(pool) == PICTURES);

    reserve = FUNC4(pool, PICTURES / 2);
    FUNC0(reserve != NULL);

    FUNC3(reserve);
    FUNC3(pool);

    FUNC5(false);
    FUNC5(true);

    return 0;
}