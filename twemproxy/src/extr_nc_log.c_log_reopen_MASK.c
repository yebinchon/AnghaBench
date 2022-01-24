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
struct logger {scalar_t__ fd; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 scalar_t__ STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct logger logger ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
    struct logger *l = &logger;

    if (l->fd != STDERR_FILENO) {
        FUNC0(l->fd);
        l->fd = FUNC2(l->name, O_WRONLY | O_APPEND | O_CREAT, 0644);
        if (l->fd < 0) {
            FUNC1("reopening log file '%s' failed, ignored: %s", l->name,
                       FUNC3(errno));
        }
    }
}