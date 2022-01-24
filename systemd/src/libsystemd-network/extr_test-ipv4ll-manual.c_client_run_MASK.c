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
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_ipv4ll ;
typedef  int /*<<< orphan*/  sd_event ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ll_handler ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct ether_addr const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(int ifindex, const char *seed_str, const struct ether_addr *ha, sd_event *e) {
        sd_ipv4ll *ll;

        FUNC0(FUNC5(&ll) >= 0);
        FUNC0(FUNC4(ll, e, 0) >= 0);

        FUNC0(FUNC8(ll, ifindex) >= 0);
        FUNC0(FUNC9(ll, ha) >= 0);
        FUNC0(FUNC7(ll, ll_handler, NULL) >= 0);

        if (seed_str) {
                unsigned seed;

                FUNC0(FUNC2(seed_str, &seed) >= 0);

                FUNC0(FUNC6(ll, seed) >= 0);
        }

        FUNC1("starting IPv4LL client");

        FUNC0(FUNC10(ll) >= 0);

        FUNC0(FUNC3(e) >= 0);

        FUNC0(!FUNC11(ll));

        return EXIT_SUCCESS;
}