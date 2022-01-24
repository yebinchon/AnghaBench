#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct oletls {int /*<<< orphan*/  spies; } ;
struct TYPE_2__ {struct oletls* ReservedForOle; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 struct oletls* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct oletls *FUNC3(void)
{
    if (!FUNC0()->ReservedForOle)
    {
        struct oletls *oletls = FUNC1(sizeof(*oletls));
        if (oletls)
            FUNC2(&oletls->spies);
        FUNC0()->ReservedForOle = oletls;
    }

    return FUNC0()->ReservedForOle;
}