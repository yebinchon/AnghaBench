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
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {int resp; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int /*<<< orphan*/  pmessagebulk; int /*<<< orphan*/ * mbulkhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_2__ shared ; 

void FUNC3(client *c, robj *pat, robj *channel, robj *msg) {
    if (c->resp == 2)
        FUNC0(c,shared.mbulkhdr[4]);
    else
        FUNC2(c,4);
    FUNC0(c,shared.pmessagebulk);
    FUNC1(c,pat);
    FUNC1(c,channel);
    FUNC1(c,msg);
}