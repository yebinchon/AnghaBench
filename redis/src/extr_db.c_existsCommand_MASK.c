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
struct TYPE_4__ {int argc; int /*<<< orphan*/ * argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(client *c) {
    long long count = 0;
    int j;

    for (j = 1; j < c->argc; j++) {
        if (FUNC1(c->db,c->argv[j])) count++;
    }
    FUNC0(c,count);
}