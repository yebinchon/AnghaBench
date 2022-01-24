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

/* Variables and functions */
 int /*<<< orphan*/  MFD_CLOEXEC ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int) ; 

int FUNC4(const char *ident) {
        int fd;

        fd = FUNC2(ident, MFD_CLOEXEC);
        if (fd < 0) {
                const char *path;

                path = FUNC0() == 1 ? "/run/systemd" : "/tmp";
                fd = FUNC3(path, O_RDWR|O_CLOEXEC);
                if (fd < 0)
                        return fd;

                FUNC1("Serializing %s to %s.", ident, path);
        } else
                FUNC1("Serializing %s to memfd.", ident);

        return fd;
}