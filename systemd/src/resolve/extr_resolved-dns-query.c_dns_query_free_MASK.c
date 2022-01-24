#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  queries; } ;
struct TYPE_16__ {TYPE_2__* manager; int /*<<< orphan*/  request_address_string; TYPE_7__* request_dns_stream; int /*<<< orphan*/  reply_dns_packet; int /*<<< orphan*/  request_dns_packet; int /*<<< orphan*/  bus_track; int /*<<< orphan*/  request; int /*<<< orphan*/  question_utf8; int /*<<< orphan*/  question_idna; TYPE_1__* auxiliary_for; struct TYPE_16__* auxiliary_queries; } ;
struct TYPE_15__ {int /*<<< orphan*/  n_dns_queries; int /*<<< orphan*/  dns_queries; } ;
struct TYPE_14__ {scalar_t__ n_auxiliary_queries; int /*<<< orphan*/  auxiliary_queries; } ;
typedef  TYPE_3__ DnsQuery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  auxiliary_queries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  queries ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 

DnsQuery *FUNC12(DnsQuery *q) {
        if (!q)
                return NULL;

        while (q->auxiliary_queries)
                FUNC12(q->auxiliary_queries);

        if (q->auxiliary_for) {
                FUNC1(q->auxiliary_for->n_auxiliary_queries > 0);
                q->auxiliary_for->n_auxiliary_queries--;
                FUNC0(auxiliary_queries, q->auxiliary_for->auxiliary_queries, q);
        }

        FUNC3(q);

        FUNC5(q->question_idna);
        FUNC5(q->question_utf8);

        FUNC4(q);

        FUNC9(q->request);
        FUNC10(q->bus_track);

        FUNC2(q->request_dns_packet);
        FUNC2(q->reply_dns_packet);

        if (q->request_dns_stream) {
                /* Detach the stream from our query, in case something else keeps a reference to it. */
                (void) FUNC11(q->request_dns_stream->queries, q);
                q->request_dns_stream = FUNC6(q->request_dns_stream);
        }

        FUNC7(q->request_address_string);

        if (q->manager) {
                FUNC0(queries, q->manager->dns_queries, q);
                q->manager->n_dns_queries--;
        }

        return FUNC8(q);
}