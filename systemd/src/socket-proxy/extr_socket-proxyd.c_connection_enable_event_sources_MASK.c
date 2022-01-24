#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ server_to_client_buffer_full; scalar_t__ server_to_client_buffer_size; scalar_t__ client_to_server_buffer_full; scalar_t__ client_to_server_buffer_size; scalar_t__ server_fd; scalar_t__ client_fd; scalar_t__ client_event_source; TYPE_1__* context; scalar_t__ server_event_source; } ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ Connection ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLLOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  traffic_cb ; 

__attribute__((used)) static int FUNC4(Connection *c) {
        uint32_t a = 0, b = 0;
        int r;

        FUNC0(c);

        if (c->server_to_client_buffer_full > 0)
                b |= EPOLLOUT;
        if (c->server_to_client_buffer_full < c->server_to_client_buffer_size)
                a |= EPOLLIN;

        if (c->client_to_server_buffer_full > 0)
                a |= EPOLLOUT;
        if (c->client_to_server_buffer_full < c->client_to_server_buffer_size)
                b |= EPOLLIN;

        if (c->server_event_source)
                r = FUNC3(c->server_event_source, a);
        else if (c->server_fd >= 0)
                r = FUNC2(c->context->event, &c->server_event_source, c->server_fd, a, traffic_cb, c);
        else
                r = 0;

        if (r < 0)
                return FUNC1(r, "Failed to set up server event source: %m");

        if (c->client_event_source)
                r = FUNC3(c->client_event_source, b);
        else if (c->client_fd >= 0)
                r = FUNC2(c->context->event, &c->client_event_source, c->client_fd, b, traffic_cb, c);
        else
                r = 0;

        if (r < 0)
                return FUNC1(r, "Failed to set up client event source: %m");

        return 0;
}