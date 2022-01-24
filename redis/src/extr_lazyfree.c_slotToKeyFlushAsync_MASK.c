#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  numele; } ;
typedef  TYPE_2__ rax ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int /*<<< orphan*/  slots_keys_count; TYPE_2__* slots_to_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_LAZY_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  lazyfree_objects ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 () ; 
 TYPE_3__ server ; 

void FUNC4(void) {
    rax *old = server.cluster->slots_to_keys;

    server.cluster->slots_to_keys = FUNC3();
    FUNC2(server.cluster->slots_keys_count,0,
           sizeof(server.cluster->slots_keys_count));
    FUNC0(lazyfree_objects,old->numele);
    FUNC1(BIO_LAZY_FREE,NULL,NULL,old);
}