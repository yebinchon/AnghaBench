#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  fdname; int /*<<< orphan*/  fd; int /*<<< orphan*/  service; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__ ServiceFDStore ;

/* Variables and functions */
 int EPOLLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_event_source *e, int fd, uint32_t revents, void *userdata) {
        ServiceFDStore *fs = userdata;

        FUNC1(e);
        FUNC1(fs);

        /* If we get either EPOLLHUP or EPOLLERR, it's time to remove this entry from the fd store */
        FUNC2(FUNC0(fs->service),
                       "Received %s on stored fd %d (%s), closing.",
                       revents & EPOLLERR ? "EPOLLERR" : "EPOLLHUP",
                       fs->fd, FUNC4(fs->fdname));
        FUNC3(fs);
        return 0;
}