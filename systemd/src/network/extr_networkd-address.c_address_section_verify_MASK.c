#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  line; int /*<<< orphan*/  filename; } ;
struct TYPE_5__ {scalar_t__ family; TYPE_2__* section; } ;
typedef  TYPE_1__ Address ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

int FUNC4(Address *address) {
        if (FUNC3(address->section))
                return -EINVAL;

        if (address->family == AF_UNSPEC) {
                FUNC1(address->section);

                return FUNC2(FUNC0(EINVAL),
                                         "%s: Address section without Address= field configured. "
                                         "Ignoring [Address] section from line %u.",
                                         address->section->filename, address->section->line);
        }

        return 0;
}