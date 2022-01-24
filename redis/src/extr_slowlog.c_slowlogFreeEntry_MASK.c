#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int argc; int /*<<< orphan*/  cname; int /*<<< orphan*/  peerid; struct TYPE_4__* argv; } ;
typedef  TYPE_1__ slowlogEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(void *septr) {
    slowlogEntry *se = septr;
    int j;

    for (j = 0; j < se->argc; j++)
        FUNC0(se->argv[j]);
    FUNC2(se->argv);
    FUNC1(se->peerid);
    FUNC1(se->cname);
    FUNC2(se);
}