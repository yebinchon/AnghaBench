#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_9__ {scalar_t__ cluster_enabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_ASKING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_3__ server ; 
 TYPE_2__ shared ; 

void FUNC2(client *c) {
    if (server.cluster_enabled == 0) {
        FUNC1(c,"This instance has cluster support disabled");
        return;
    }
    c->flags |= CLIENT_ASKING;
    FUNC0(c,shared.ok);
}