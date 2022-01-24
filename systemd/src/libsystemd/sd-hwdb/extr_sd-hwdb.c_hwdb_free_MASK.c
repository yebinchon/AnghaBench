#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  st_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  properties; int /*<<< orphan*/  f; TYPE_1__ st; scalar_t__ map; } ;
typedef  TYPE_2__ sd_hwdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_hwdb *FUNC5(sd_hwdb *hwdb) {
        FUNC0(hwdb);

        if (hwdb->map)
                FUNC2((void *)hwdb->map, hwdb->st.st_size);
        FUNC4(hwdb->f);
        FUNC3(hwdb->properties);
        return FUNC1(hwdb);
}