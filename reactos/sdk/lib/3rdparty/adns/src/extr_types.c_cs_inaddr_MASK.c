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
typedef  int /*<<< orphan*/  vbuf ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  adns_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  adns_s_ok ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (struct in_addr const) ; 

__attribute__((used)) static adns_status FUNC3(vbuf *vb, const void *datap) {
  const struct in_addr *rrp= datap, rr= *rrp;
  const char *ia;

  ia= FUNC2(rr); FUNC1(ia);
  FUNC0(ia);
  return adns_s_ok;
}