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
struct ether_arp {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef  scalar_t__ be32_t ;

/* Variables and functions */
 int FUNC0 (int,int,struct ether_arp*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(int fd, int ifindex,
                    be32_t pa, const struct ether_addr *ha) {
        struct ether_arp ea = {};

        FUNC1(fd >= 0);
        FUNC1(ifindex > 0);
        FUNC1(pa != 0);
        FUNC1(ha);

        return FUNC0(fd, ifindex, &ea);
}