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
struct siphash {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC2(const struct in6_addr *addr, struct siphash *state) {
        FUNC0(addr);

        FUNC1(addr, sizeof(*addr), state);
}