#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  nl_pid; } ;
union sockaddr_union {TYPE_3__ nl; int /*<<< orphan*/  sa; } ;
struct sockaddr_nl {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_7__ {int /*<<< orphan*/  nl_pid; } ;
struct TYPE_8__ {TYPE_1__ nl; } ;
struct TYPE_10__ {TYPE_2__ snl; int /*<<< orphan*/  sock; } ;
typedef  TYPE_4__ sd_device_monitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC2(sd_device_monitor *m) {
        union sockaddr_union snl;
        socklen_t addrlen;

        FUNC0(m);

        /* Get the address the kernel has assigned us.
         * It is usually, but not necessarily the pid. */
        addrlen = sizeof(struct sockaddr_nl);
        if (FUNC1(m->sock, &snl.sa, &addrlen) < 0)
                return -errno;

        m->snl.nl.nl_pid = snl.nl.nl_pid;
        return 0;
}