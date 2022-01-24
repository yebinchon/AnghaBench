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

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct ether_addr const*,struct ether_addr const*,int /*<<< orphan*/ ) ; 

int FUNC1(const struct ether_addr *a, const struct ether_addr *b) {
        return FUNC0(a, b, ETH_ALEN);
}