#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* job_type; int /*<<< orphan*/  verb; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* unit_actions ; 

__attribute__((used)) static const char *FUNC2(const char *verb) {
       size_t i;

       for (i = 0; i < FUNC0(unit_actions); i++)
                if (FUNC1(unit_actions[i].verb, verb))
                        return unit_actions[i].job_type;

       return "start";
}