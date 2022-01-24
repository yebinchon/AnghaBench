#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Option ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static Option *FUNC2(Option *o) {
        if (!o)
                return NULL;

        FUNC0(o->key);
        FUNC0(o->value);

        return FUNC1(o);
}