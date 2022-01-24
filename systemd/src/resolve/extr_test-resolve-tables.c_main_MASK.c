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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  DNSSEC_RESULT ; 
 int /*<<< orphan*/  DNSSEC_VERDICT ; 
 int /*<<< orphan*/  DNS_PROTOCOL ; 
 int /*<<< orphan*/  DNS_RCODE ; 
 int /*<<< orphan*/  DNS_TYPE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ _DNS_CLASS_MAX ; 
 scalar_t__ _DNS_CLASS_STRING_MAX ; 
 scalar_t__ _DNS_TYPE_MAX ; 
 scalar_t__ _DNS_TYPE_STRING_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  dns_protocol ; 
 int /*<<< orphan*/  dns_rcode ; 
 int /*<<< orphan*/  dns_type ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 char* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  dnssec_result ; 
 int /*<<< orphan*/  dnssec_verdict ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 scalar_t__ FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC18(int argc, char **argv) {
        uint16_t i;

        FUNC16(dns_protocol, DNS_PROTOCOL);
        FUNC16(dnssec_result, DNSSEC_RESULT);
        FUNC16(dnssec_verdict, DNSSEC_VERDICT);

        FUNC17(dns_rcode, DNS_RCODE);
        FUNC17(dns_type, DNS_TYPE);

        FUNC14("/* DNS_TYPE */");
        for (i = 0; i < _DNS_TYPE_MAX; i++) {
                const char *s;

                s = FUNC13(i);
                FUNC0(s == NULL || FUNC15(s) < _DNS_TYPE_STRING_MAX);

                if (s)
                        FUNC14("%-*s %s%s%s%s%s%s%s%s%s",
                                 (int) _DNS_TYPE_STRING_MAX - 1, s,
                                 FUNC7(i) ? "pseudo " : "",
                                 FUNC8(i) ? "valid_query " : "",
                                 FUNC9(i) ? "is_valid_rr " : "",
                                 FUNC10(i) ? "may_redirect " : "",
                                 FUNC5(i) ? "dnssec " : "",
                                 FUNC6(i) ? "obsolete " : "",
                                 FUNC11(i) ? "wildcard " : "",
                                 FUNC4(i) ? "apex_only " : "",
                                 FUNC12(i) ? "needs_authentication" : "");
        }

        FUNC14("/* DNS_CLASS */");
        for (i = 0; i < _DNS_CLASS_MAX; i++) {
                const char *s;

                s = FUNC3(i);
                FUNC0(s == NULL || FUNC15(s) < _DNS_CLASS_STRING_MAX);

                if (s)
                        FUNC14("%-*s %s%s",
                                 (int) _DNS_CLASS_STRING_MAX - 1, s,
                                 FUNC1(i) ? "is_pseudo " : "",
                                 FUNC2(i) ? "is_valid_rr " : "");
        }

        return EXIT_SUCCESS;
}