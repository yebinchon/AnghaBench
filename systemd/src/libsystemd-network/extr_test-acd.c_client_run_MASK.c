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
struct in_addr {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_ipv4acd ;
typedef  int /*<<< orphan*/  sd_event ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  acd_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct in_addr const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct ether_addr const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int ifindex, const struct in_addr *pa, const struct ether_addr *ha, sd_event *e) {
        sd_ipv4acd *acd;

        FUNC0(FUNC4(&acd) >= 0);
        FUNC0(FUNC3(acd, e, 0) >= 0);

        FUNC0(FUNC7(acd, ifindex) >= 0);
        FUNC0(FUNC8(acd, ha) >= 0);
        FUNC0(FUNC5(acd, pa) >= 0);
        FUNC0(FUNC6(acd, acd_handler, NULL) >= 0);

        FUNC1("starting IPv4ACD client");

        FUNC0(FUNC9(acd) >= 0);

        FUNC0(FUNC2(e) >= 0);

        FUNC0(!FUNC10(acd));

        return EXIT_SUCCESS;
}