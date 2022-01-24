#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* db; } ;
struct TYPE_3__ {int /*<<< orphan*/  expires; int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 

void FUNC2(int dbid) {
    if (FUNC1(server.db[dbid].dict))
        FUNC0(server.db[dbid].dict);
    if (FUNC1(server.db[dbid].expires))
        FUNC0(server.db[dbid].expires);
}