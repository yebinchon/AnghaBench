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
struct stat {int /*<<< orphan*/  st_dev; } ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC4(const char *name, bool export, const char *prefix) {
        struct stat statbuf;

        if (FUNC3(name, &statbuf) != 0)
                return -errno;

        if (export) {
                if (!prefix)
                        prefix = "INFO_";
                FUNC2("%sMAJOR=%u\n"
                       "%sMINOR=%u\n",
                       prefix, FUNC0(statbuf.st_dev),
                       prefix, FUNC1(statbuf.st_dev));
        } else
                FUNC2("%u:%u\n", FUNC0(statbuf.st_dev), FUNC1(statbuf.st_dev));
        return 0;
}