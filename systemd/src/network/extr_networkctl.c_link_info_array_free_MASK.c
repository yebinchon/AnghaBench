#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ssid; int /*<<< orphan*/  sd_device; scalar_t__ needs_freeing; } ;
typedef  TYPE_1__ LinkInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ const* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const LinkInfo* FUNC3(LinkInfo *array) {
        for (unsigned i = 0; array && array[i].needs_freeing; i++) {
                FUNC2(array[i].sd_device);
                FUNC0(array[i].ssid);
        }

        return FUNC1(array);
}