#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  devlinks; int /*<<< orphan*/  tags; int /*<<< orphan*/  sysattrs; int /*<<< orphan*/  sysattr_values; int /*<<< orphan*/  properties_db; int /*<<< orphan*/  properties; int /*<<< orphan*/  properties_nulstr; int /*<<< orphan*/  properties_strv; int /*<<< orphan*/  id_filename; int /*<<< orphan*/  driver; int /*<<< orphan*/  driver_subsystem; int /*<<< orphan*/  subsystem; int /*<<< orphan*/  devname; int /*<<< orphan*/  devtype; int /*<<< orphan*/  sysname; int /*<<< orphan*/  syspath; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_device *FUNC7(sd_device *device) {
        FUNC0(device);

        FUNC5(device->parent);
        FUNC1(device->syspath);
        FUNC1(device->sysname);
        FUNC1(device->devtype);
        FUNC1(device->devname);
        FUNC1(device->subsystem);
        FUNC1(device->driver_subsystem);
        FUNC1(device->driver);
        FUNC1(device->id_filename);
        FUNC1(device->properties_strv);
        FUNC1(device->properties_nulstr);

        FUNC4(device->properties);
        FUNC4(device->properties_db);
        FUNC2(device->sysattr_values);
        FUNC6(device->sysattrs);
        FUNC6(device->tags);
        FUNC6(device->devlinks);

        return FUNC3(device);
}