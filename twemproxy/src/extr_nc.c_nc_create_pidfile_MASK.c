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
struct instance {int pidfile; int /*<<< orphan*/  pid_filename; int /*<<< orphan*/  pid; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int NC_UINTMAX_MAXLEN ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC6(struct instance *nci)
{
    char pid[NC_UINTMAX_MAXLEN];
    int fd, pid_len;
    ssize_t n;

    fd = FUNC4(nci->pid_filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0) {
        FUNC1("opening pid file '%s' failed: %s", nci->pid_filename,
                  FUNC5(errno));
        return NC_ERROR;
    }
    nci->pidfile = 1;

    pid_len = FUNC2(pid, NC_UINTMAX_MAXLEN, "%d", nci->pid);

    n = FUNC3(fd, pid, pid_len);
    if (n < 0) {
        FUNC1("write to pid file '%s' failed: %s", nci->pid_filename,
                  FUNC5(errno));
        return NC_ERROR;
    }

    FUNC0(fd);

    return NC_OK;
}