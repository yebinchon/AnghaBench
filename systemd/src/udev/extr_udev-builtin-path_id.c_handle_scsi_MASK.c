#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static sd_device *FUNC13(sd_device *parent, char **path, bool *supported_parent) {
        const char *devtype, *id, *name;

        if (FUNC7(parent, &devtype) < 0 ||
            !FUNC11(devtype, "scsi_device"))
                return parent;

        /* firewire */
        if (FUNC8(parent, "ieee1394_id", &id) >= 0) {
                FUNC6(path, "ieee1394-0x%s", id);
                *supported_parent = true;
                return FUNC10(parent, "scsi");
        }

        /* scsi sysfs does not have a "subsystem" for the transport */
        if (FUNC9(parent, &name) < 0)
                return NULL;

        if (FUNC12(name, "/rport-")) {
                *supported_parent = true;
                return FUNC2(parent, path);
        }

        if (FUNC12(name, "/end_device-")) {
                *supported_parent = true;
                return FUNC5(parent, path);
        }

        if (FUNC12(name, "/session")) {
                *supported_parent = true;
                return FUNC4(parent, path);
        }

        if (FUNC12(name, "/ata"))
                return FUNC0(parent, path);

        if (FUNC12(name, "/vmbus_"))
                return FUNC3(parent, path, 37);
        else if (FUNC12(name, "/VMBUS"))
                return FUNC3(parent, path, 38);

        return FUNC1(parent, path);
}