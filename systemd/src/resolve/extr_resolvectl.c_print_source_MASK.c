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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  rtt_str ;

/* Variables and functions */
 int FORMAT_TIMESTAMP_MAX ; 
 int SD_RESOLVED_AUTHENTICATED ; 
 int SD_RESOLVED_DNS ; 
 int SD_RESOLVED_LLMNR_IPV4 ; 
 int SD_RESOLVED_LLMNR_IPV6 ; 
 int SD_RESOLVED_MDNS_IPV4 ; 
 int SD_RESOLVED_MDNS_IPV6 ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  arg_legend ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(uint64_t flags, usec_t rtt) {
        char rtt_str[FORMAT_TIMESTAMP_MAX];

        if (!arg_legend)
                return;

        if (flags == 0)
                return;

        FUNC4("\n%s-- Information acquired via", FUNC0());

        if (flags != 0)
                FUNC4(" protocol%s%s%s%s%s",
                       flags & SD_RESOLVED_DNS ? " DNS" :"",
                       flags & SD_RESOLVED_LLMNR_IPV4 ? " LLMNR/IPv4" : "",
                       flags & SD_RESOLVED_LLMNR_IPV6 ? " LLMNR/IPv6" : "",
                       flags & SD_RESOLVED_MDNS_IPV4 ? " mDNS/IPv4" : "",
                       flags & SD_RESOLVED_MDNS_IPV6 ? " mDNS/IPv6" : "");

        FUNC2(FUNC3(rtt_str, sizeof(rtt_str), rtt, 100));

        FUNC4(" in %s.%s\n"
               "%s-- Data is authenticated: %s%s\n",
               rtt_str, FUNC1(),
               FUNC0(), FUNC5(flags & SD_RESOLVED_AUTHENTICATED), FUNC1());
}