#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* memp; } ;
struct TYPE_5__ {int /*<<< orphan*/  pcbs; } ;
struct TYPE_4__ {scalar_t__ used; } ;

/* Variables and functions */
 size_t MEMP_PBUF_POOL ; 
 size_t MEMP_TCP_PCB ; 
 size_t MEMP_TCP_PCB_LISTEN ; 
 size_t MEMP_TCP_SEG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ lwip_stats ; 
 int /*<<< orphan*/  tcp_active_pcbs ; 
 TYPE_2__ tcp_listen_pcbs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_tw_pcbs ; 

void
FUNC2(void)
{
  FUNC1(tcp_listen_pcbs.pcbs);
  FUNC1(tcp_active_pcbs);
  FUNC1(tcp_tw_pcbs);
  FUNC0(lwip_stats.memp[MEMP_TCP_PCB].used == 0);
  FUNC0(lwip_stats.memp[MEMP_TCP_PCB_LISTEN].used == 0);
  FUNC0(lwip_stats.memp[MEMP_TCP_SEG].used == 0);
  FUNC0(lwip_stats.memp[MEMP_PBUF_POOL].used == 0);
}