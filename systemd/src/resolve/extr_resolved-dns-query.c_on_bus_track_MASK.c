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
typedef  int /*<<< orphan*/  sd_bus_track ;
typedef  int /*<<< orphan*/  DnsQuery ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TRANSACTION_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(sd_bus_track *t, void *userdata) {
        DnsQuery *q = userdata;

        FUNC0(t);
        FUNC0(q);

        FUNC2("Client of active query vanished, aborting query.");
        FUNC1(q, DNS_TRANSACTION_ABORTED);
        return 0;
}