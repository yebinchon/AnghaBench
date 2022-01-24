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
 int ENOENT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *root, const char *file) {
        const char *p;

        FUNC0(root);
        FUNC0(file);

        p = FUNC3(root, file);
        if (FUNC4(p) < 0) {
                FUNC1(errno == ENOENT ? LOG_DEBUG : LOG_ERR, errno,
                               "Failed to unlink file \"%s\": %m", p);

                return errno == ENOENT ? 0 : -errno;
        }

        FUNC2("Removed \"%s\".", p);
        return 1;
}