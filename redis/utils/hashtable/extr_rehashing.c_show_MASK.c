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
struct TYPE_3__ {int rehashidx; int /*<<< orphan*/ * ht; } ;
typedef  TYPE_1__ dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(dict *d) {
    int j;
    if (d->rehashidx != -1) {
        FUNC0("rhidx: ");
        for (j = 0; j < d->rehashidx; j++)
            FUNC0(".");
        FUNC0("|\n");
    }
    FUNC0("ht[0]: ");
    FUNC1(d->ht[0]);
    FUNC0("ht[1]: ");
    FUNC1(d->ht[1]);
    FUNC0("\n");
}