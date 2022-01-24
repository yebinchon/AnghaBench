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
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

void
FUNC17(void)
{
  /* Modules initialization */
  FUNC12();
#if !NO_SYS
  FUNC13();
#endif /* !NO_SYS */
  FUNC6();
  FUNC7();
  FUNC9();
  FUNC8();
#if LWIP_SOCKET
  lwip_socket_init();
#endif /* LWIP_SOCKET */
  FUNC4();
#if LWIP_ARP
  etharp_init();
#endif /* LWIP_ARP */
#if LWIP_RAW
  raw_init();
#endif /* LWIP_RAW */
#if LWIP_UDP
  udp_init();
#endif /* LWIP_UDP */
#if LWIP_TCP
  tcp_init();
#endif /* LWIP_TCP */
#if LWIP_SNMP
  snmp_init();
#endif /* LWIP_SNMP */
#if LWIP_AUTOIP
  autoip_init();
#endif /* LWIP_AUTOIP */
#if LWIP_IGMP
  igmp_init();
#endif /* LWIP_IGMP */
#if LWIP_DNS
  dns_init();
#endif /* LWIP_DNS */

#if LWIP_TIMERS
  sys_timeouts_init();
#endif /* LWIP_TIMERS */
}