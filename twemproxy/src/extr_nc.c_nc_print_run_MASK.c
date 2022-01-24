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
struct utsname {int /*<<< orphan*/  machine; int /*<<< orphan*/  release; int /*<<< orphan*/  sysname; } ;
struct instance {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NC_VERSION_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct utsname*) ; 

__attribute__((used)) static void
FUNC2(struct instance *nci)
{
    int status;
    struct utsname name;

    status = FUNC1(&name);
    if (status < 0) {
        FUNC0("nutcracker-%s started on pid %d", NC_VERSION_STRING, nci->pid);
    } else {
        FUNC0("nutcracker-%s built for %s %s %s started on pid %d",
             NC_VERSION_STRING, name.sysname, name.release, name.machine,
             nci->pid);
    }

    FUNC0("run, rabbit run / dig that hole, forget the sun / "
         "and when at last the work is done / don't sit down / "
         "it's time to dig another one");
}