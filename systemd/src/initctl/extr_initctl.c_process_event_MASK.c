#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  Server ;
typedef  int /*<<< orphan*/  Fifo ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int EPOLLIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char*) ; 

__attribute__((used)) static int FUNC5(Server *s, struct epoll_event *ev) {
        int r;
        Fifo *f;

        FUNC1(s);

        if (!(ev->events & EPOLLIN))
                return FUNC4(FUNC0(EIO),
                                      "Got invalid event from epoll. (3)");

        f = (Fifo*) ev->data.ptr;
        r = FUNC3(f);
        if (r < 0) {
                FUNC4(r, "Got error on fifo: %m");
                FUNC2(f);
                return r;
        }

        return 0;
}