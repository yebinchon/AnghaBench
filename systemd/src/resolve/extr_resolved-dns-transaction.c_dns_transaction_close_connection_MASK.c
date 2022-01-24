#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  transactions; } ;
struct TYPE_7__ {int /*<<< orphan*/  dns_udp_fd; int /*<<< orphan*/  dns_udp_event_source; TYPE_3__* stream; int /*<<< orphan*/  sent; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transactions_by_stream ; 

__attribute__((used)) static void FUNC7(DnsTransaction *t) {
        FUNC1(t);

        if (t->stream) {
                /* Let's detach the stream from our transaction, in case something else keeps a reference to it. */
                FUNC0(transactions_by_stream, t->stream->transactions, t);

                /* Remove packet in case it's still in the queue */
                FUNC2(FUNC4(t->stream->write_queue, t->sent));

                t->stream = FUNC3(t->stream);
        }

        t->dns_udp_event_source = FUNC6(t->dns_udp_event_source);
        t->dns_udp_fd = FUNC5(t->dns_udp_fd);
}