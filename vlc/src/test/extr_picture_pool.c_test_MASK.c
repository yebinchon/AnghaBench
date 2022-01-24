#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_7__ {void* p_pixels; } ;

/* Variables and functions */
 int PICTURES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fmt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pool ; 
 int /*<<< orphan*/ * reserve ; 

__attribute__((used)) static void FUNC8(bool zombie)
{
    picture_t *pics[PICTURES];

    pool = FUNC4(&fmt, PICTURES);
    FUNC0(pool != NULL);

    for (unsigned i = 0; i < PICTURES; i++) {
        pics[i] = FUNC3(pool);
        FUNC0(pics[i] != NULL);
    }

    for (unsigned i = 0; i < PICTURES; i++)
        FUNC0(FUNC3(pool) == NULL);

    // Reserve currently assumes that all pictures are free (or reserved).
    //assert(picture_pool_Reserve(pool, 1) == NULL);

    for (unsigned i = 0; i < PICTURES / 2; i++)
        FUNC1(pics[i]);

    for (unsigned i = 0; i < PICTURES / 2; i++)
        FUNC2(pics[i]);

    for (unsigned i = 0; i < PICTURES; i++) {
        void *plane = pics[i]->p[0].p_pixels;
        FUNC0(plane != NULL);
        FUNC2(pics[i]);

        pics[i] = FUNC3(pool);
        FUNC0(pics[i] != NULL);
        FUNC0(pics[i]->p[0].p_pixels == plane);
    }

    for (unsigned i = 0; i < PICTURES; i++)
        FUNC2(pics[i]);

    for (unsigned i = 0; i < PICTURES; i++) {
        pics[i] = FUNC7(pool);
        FUNC0(pics[i] != NULL);
    }

    for (unsigned i = 0; i < PICTURES; i++)
        FUNC2(pics[i]);

    reserve = FUNC6(pool, PICTURES / 2);
    FUNC0(reserve != NULL);

    for (unsigned i = 0; i < PICTURES / 2; i++) {
        pics[i] = FUNC3(pool);
        FUNC0(pics[i] != NULL);
    }

    for (unsigned i = PICTURES / 2; i < PICTURES; i++) {
        FUNC0(FUNC3(pool) == NULL);
        pics[i] = FUNC3(reserve);
        FUNC0(pics[i] != NULL);
    }

    if (!zombie)
        for (unsigned i = 0; i < PICTURES; i++)
            FUNC2(pics[i]);

    FUNC5(reserve);
    FUNC5(pool);

    if (zombie)
        for (unsigned i = 0; i < PICTURES; i++)
            FUNC2(pics[i]);
}