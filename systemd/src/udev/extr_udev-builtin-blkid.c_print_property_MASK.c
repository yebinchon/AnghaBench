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
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,char const*) ; 

__attribute__((used)) static void FUNC6(sd_device *dev, bool test, const char *name, const char *value) {
        char s[256];

        s[0] = '\0';

        if (FUNC3(name, "TYPE")) {
                FUNC5(dev, test, "ID_FS_TYPE", value);

        } else if (FUNC3(name, "USAGE")) {
                FUNC5(dev, test, "ID_FS_USAGE", value);

        } else if (FUNC3(name, "VERSION")) {
                FUNC5(dev, test, "ID_FS_VERSION", value);

        } else if (FUNC3(name, "UUID")) {
                FUNC1(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_UUID", s);
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_UUID_ENC", s);

        } else if (FUNC3(name, "UUID_SUB")) {
                FUNC1(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_UUID_SUB", s);
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_UUID_SUB_ENC", s);

        } else if (FUNC3(name, "LABEL")) {
                FUNC1(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_LABEL", s);
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_LABEL_ENC", s);

        } else if (FUNC3(name, "PTTYPE")) {
                FUNC5(dev, test, "ID_PART_TABLE_TYPE", value);

        } else if (FUNC3(name, "PTUUID")) {
                FUNC5(dev, test, "ID_PART_TABLE_UUID", value);

        } else if (FUNC3(name, "PART_ENTRY_NAME")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_PART_ENTRY_NAME", s);

        } else if (FUNC3(name, "PART_ENTRY_TYPE")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_PART_ENTRY_TYPE", s);

        } else if (FUNC2(name, "PART_ENTRY_")) {
                FUNC4(s, sizeof(s), "ID_", name, NULL);
                FUNC5(dev, test, s, value);

        } else if (FUNC3(name, "SYSTEM_ID")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_SYSTEM_ID", s);

        } else if (FUNC3(name, "PUBLISHER_ID")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_PUBLISHER_ID", s);

        } else if (FUNC3(name, "APPLICATION_ID")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_APPLICATION_ID", s);

        } else if (FUNC3(name, "BOOT_SYSTEM_ID")) {
                FUNC0(value, s, sizeof(s));
                FUNC5(dev, test, "ID_FS_BOOT_SYSTEM_ID", s);
        }
}