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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char *argv[]) {

        FUNC0();

#if HAVE_GCRYPT
        test_dnssec_verify_dns_key();
        test_dnssec_verify_rfc8080_ed25519_example1();
        test_dnssec_verify_rfc8080_ed25519_example2();
        test_dnssec_verify_rrset();
        test_dnssec_verify_rrset2();
        test_dnssec_nsec3_hash();
#endif

        return 0;
}