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
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 int CLIENT_MULTI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__ shared ; 

void FUNC3(client *c) {
    if (!(c->flags & CLIENT_MULTI)) {
        FUNC1(c,"DISCARD without MULTI");
        return;
    }
    FUNC2(c);
    FUNC0(c,shared.ok);
}