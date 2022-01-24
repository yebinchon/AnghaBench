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
struct sockaddr {scalar_t__ client_fd; int /*<<< orphan*/  client_event_source; TYPE_1__* context; int /*<<< orphan*/  sa_family; } ;
typedef  struct sockaddr* socklen_t ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;
typedef  struct sockaddr Connection ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 int FUNC1 (scalar_t__,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  connect_cb ; 
 int FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(Connection *c, struct sockaddr *sa, socklen_t salen) {
        int r;

        FUNC0(c);
        FUNC0(sa);
        FUNC0(salen);

        c->client_fd = FUNC7(sa->sa_family, SOCK_STREAM|SOCK_NONBLOCK|SOCK_CLOEXEC, 0);
        if (c->client_fd < 0) {
                FUNC4(errno, "Failed to get remote socket: %m");
                goto fail;
        }

        r = FUNC1(c->client_fd, sa, salen);
        if (r < 0) {
                if (errno == EINPROGRESS) {
                        r = FUNC5(c->context->event, &c->client_event_source, c->client_fd, EPOLLOUT, connect_cb, c);
                        if (r < 0) {
                                FUNC4(r, "Failed to add connection socket: %m");
                                goto fail;
                        }

                        r = FUNC6(c->client_event_source, SD_EVENT_ONESHOT);
                        if (r < 0) {
                                FUNC4(r, "Failed to enable oneshot event source: %m");
                                goto fail;
                        }
                } else {
                        FUNC4(errno, "Failed to connect to remote host: %m");
                        goto fail;
                }
        } else {
                r = FUNC2(c);
                if (r < 0)
                        goto fail;
        }

        return 0;

fail:
        FUNC3(c);
        return 0; /* ignore errors, continue serving */
}