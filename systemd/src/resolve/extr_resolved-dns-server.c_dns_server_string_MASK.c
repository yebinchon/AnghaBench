#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  server_string; int /*<<< orphan*/  address; int /*<<< orphan*/  family; } ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 

const char *FUNC4(DnsServer *server) {
        FUNC0(server);

        if (!server->server_string)
                (void) FUNC2(server->family, &server->address, FUNC1(server), &server->server_string);

        return FUNC3(server->server_string);
}