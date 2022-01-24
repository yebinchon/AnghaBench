#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int answer_authenticated; scalar_t__ answer_errno; scalar_t__ answer_nsec_ttl; int /*<<< orphan*/  answer_source; int /*<<< orphan*/  answer_dnssec_result; scalar_t__ answer_rcode; int /*<<< orphan*/  answer; int /*<<< orphan*/  received; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  _DNSSEC_RESULT_INVALID ; 
 int /*<<< orphan*/  _DNS_TRANSACTION_SOURCE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(DnsTransaction *t) {
        FUNC0(t);

        t->received = FUNC2(t->received);
        t->answer = FUNC1(t->answer);
        t->answer_rcode = 0;
        t->answer_dnssec_result = _DNSSEC_RESULT_INVALID;
        t->answer_source = _DNS_TRANSACTION_SOURCE_INVALID;
        t->answer_authenticated = false;
        t->answer_nsec_ttl = (uint32_t) -1;
        t->answer_errno = 0;
}