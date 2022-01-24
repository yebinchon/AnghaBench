#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  client_to_server_buffer_size; int /*<<< orphan*/  client_to_server_buffer; int /*<<< orphan*/  server_to_client_buffer_size; int /*<<< orphan*/  server_to_client_buffer; } ;
typedef  TYPE_1__ Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(Connection *c) {
        int r;

        FUNC0(c);

        r = FUNC1(c, c->server_to_client_buffer, &c->server_to_client_buffer_size);
        if (r < 0)
                goto fail;

        r = FUNC1(c, c->client_to_server_buffer, &c->client_to_server_buffer_size);
        if (r < 0)
                goto fail;

        r = FUNC2(c);
        if (r < 0)
                goto fail;

        return 0;

fail:
        FUNC3(c);
        return 0; /* ignore errors, continue serving */
}