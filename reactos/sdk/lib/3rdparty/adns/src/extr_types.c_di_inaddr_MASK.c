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
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct in_addr const,struct in_addr const) ; 

__attribute__((used)) static int FUNC1(adns_state ads, const void *datap_a, const void *datap_b) {
  const struct in_addr *ap= datap_a, *bp= datap_b;

  return FUNC0(ads,*ap,*bp);
}