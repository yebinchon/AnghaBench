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
struct sockaddr_un {int /*<<< orphan*/  sun_path; } ;
struct conn {int family; scalar_t__ addr; int /*<<< orphan*/  sd; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC3(struct conn *p)
{
    rstatus_t status;
    struct sockaddr_un *un;

    switch (p->family) {
    case AF_INET:
    case AF_INET6:
        status = FUNC1(p->sd);
        break;

    case AF_UNIX:
        /*
         * bind() will fail if the pathname already exist. So, we call unlink()
         * to delete the pathname, in case it already exists. If it does not
         * exist, unlink() returns error, which we ignore
         */
        un = (struct sockaddr_un *) p->addr;
        FUNC2(un->sun_path);
        status = NC_OK;
        break;

    default:
        FUNC0();
        status = NC_ERROR;
    }

    return status;
}