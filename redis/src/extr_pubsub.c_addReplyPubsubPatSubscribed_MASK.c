#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {int resp; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int /*<<< orphan*/  psubscribebulk; int /*<<< orphan*/ * mbulkhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__ shared ; 

void FUNC5(client *c, robj *pattern) {
    if (c->resp == 2)
        FUNC0(c,shared.mbulkhdr[3]);
    else
        FUNC3(c,3);
    FUNC0(c,shared.psubscribebulk);
    FUNC1(c,pattern);
    FUNC2(c,FUNC4(c));
}