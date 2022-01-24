#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  resolve_query; int /*<<< orphan*/  client_to_server_buffer; int /*<<< orphan*/  server_to_client_buffer; int /*<<< orphan*/  client_fd; int /*<<< orphan*/  server_fd; int /*<<< orphan*/  client_event_source; int /*<<< orphan*/  server_event_source; TYPE_1__* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  connections; } ;
typedef  TYPE_2__ Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(Connection *c) {
        FUNC0(c);

        if (c->context)
                FUNC6(c->context->connections, c);

        FUNC4(c->server_event_source);
        FUNC4(c->client_event_source);

        FUNC2(c->server_fd);
        FUNC2(c->client_fd);

        FUNC3(c->server_to_client_buffer);
        FUNC3(c->client_to_server_buffer);

        FUNC5(c->resolve_query);

        FUNC1(c);
}