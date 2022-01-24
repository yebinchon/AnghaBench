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
 int /*<<< orphan*/  WRITE_STRING_FILE_DISABLE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 char* FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_device *dev, const char *syspath) {
        const char *filename;
        int r;

        filename = FUNC2(syspath, "/uevent");
        FUNC0(dev, "device is closed, synthesising 'change' on %s", syspath);
        r = FUNC3(filename, "change", WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                return FUNC1(dev, r, "Failed to write 'change' to %s: %m", filename);
        return 0;
}