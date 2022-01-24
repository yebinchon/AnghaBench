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
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int /*<<< orphan*/  slots_keys_count; int /*<<< orphan*/  slots_to_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ server ; 

void FUNC3(void) {
    FUNC1(server.cluster->slots_to_keys);
    server.cluster->slots_to_keys = FUNC2();
    FUNC0(server.cluster->slots_keys_count,0,
           sizeof(server.cluster->slots_keys_count));
}