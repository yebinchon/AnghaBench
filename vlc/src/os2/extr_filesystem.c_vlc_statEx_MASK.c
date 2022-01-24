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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (char const*,struct stat*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (const char *filename, struct stat *buf, bool deref)
{
    const char *local_name = FUNC0 (filename);
    if (FUNC4(local_name == NULL))
    {
        errno = ENOENT;
        return -1;
    }

    int res = deref ? FUNC3 (local_name, buf)
                    : FUNC2 (local_name, buf);
    FUNC1 (local_name);
    return res;
}