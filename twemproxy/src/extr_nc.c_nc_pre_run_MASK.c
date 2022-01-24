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
struct instance {scalar_t__ pid_filename; int /*<<< orphan*/  pid; int /*<<< orphan*/  log_filename; int /*<<< orphan*/  log_level; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct instance*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct instance*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static rstatus_t
FUNC6(struct instance *nci)
{
    rstatus_t status;

    status = FUNC1(nci->log_level, nci->log_filename);
    if (status != NC_OK) {
        return status;
    }

    if (daemonize) {
        status = FUNC3(1);
        if (status != NC_OK) {
            return status;
        }
    }

    nci->pid = FUNC0();

    status = FUNC5();
    if (status != NC_OK) {
        return status;
    }

    if (nci->pid_filename) {
        status = FUNC2(nci);
        if (status != NC_OK) {
            return status;
        }
    }

    FUNC4(nci);

    return NC_OK;
}