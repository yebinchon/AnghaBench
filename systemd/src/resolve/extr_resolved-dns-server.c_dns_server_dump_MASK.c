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
struct TYPE_7__ {scalar_t__ type; char* ifname; int received_udp_packet_max; int n_failed_udp; char* n_failed_tcp; int /*<<< orphan*/  packet_bad_opt; int /*<<< orphan*/  packet_truncated; int /*<<< orphan*/  packet_rrsig_missing; int /*<<< orphan*/  possible_feature_level; int /*<<< orphan*/  verified_feature_level; struct TYPE_7__* link; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ DnsServer ;

/* Variables and functions */
 scalar_t__ DNS_SERVER_LINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(DnsServer *s, FILE *f) {
        FUNC0(s);

        if (!f)
                f = stdout;

        FUNC9("[Server ", f);
        FUNC9(FUNC4(s), f);
        FUNC9(" type=", f);
        FUNC9(FUNC5(s->type), f);

        if (s->type == DNS_SERVER_LINK) {
                FUNC0(s->link);

                FUNC9(" interface=", f);
                FUNC9(s->link->ifname, f);
        }

        FUNC9("]\n", f);

        FUNC9("\tVerified feature level: ", f);
        FUNC9(FUNC10(FUNC2(s->verified_feature_level)), f);
        FUNC8('\n', f);

        FUNC9("\tPossible feature level: ", f);
        FUNC9(FUNC10(FUNC2(s->possible_feature_level)), f);
        FUNC8('\n', f);

        FUNC9("\tDNSSEC Mode: ", f);
        FUNC9(FUNC10(FUNC6(FUNC3(s))), f);
        FUNC8('\n', f);

        FUNC9("\tCan do DNSSEC: ", f);
        FUNC9(FUNC11(FUNC1(s)), f);
        FUNC8('\n', f);

        FUNC7(f,
                "\tMaximum UDP packet size received: %zu\n"
                "\tFailed UDP attempts: %u\n"
                "\tFailed TCP attempts: %u\n"
                "\tSeen truncated packet: %s\n"
                "\tSeen OPT RR getting lost: %s\n"
                "\tSeen RRSIG RR missing: %s\n",
                s->received_udp_packet_max,
                s->n_failed_udp,
                s->n_failed_tcp,
                FUNC11(s->packet_truncated),
                FUNC11(s->packet_bad_opt),
                FUNC11(s->packet_rrsig_missing));
}