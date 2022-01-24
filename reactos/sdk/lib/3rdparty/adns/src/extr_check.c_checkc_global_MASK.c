#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* adns_state ;
struct TYPE_11__ {int /*<<< orphan*/  used; } ;
struct TYPE_12__ {scalar_t__ udpsocket; int nsortlist; scalar_t__ tcpserver; scalar_t__ nservers; int tcpstate; int tcpsocket; int /*<<< orphan*/  nsearchlist; scalar_t__ searchlist; TYPE_4__ tcprecv; int /*<<< orphan*/  tcprecv_skip; TYPE_3__* sortlist; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_10__ {TYPE_2__ mask; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
#define  server_broken 131 
#define  server_connecting 130 
#define  server_disconnected 129 
#define  server_ok 128 

__attribute__((used)) static void FUNC2(adns_state ads) {
  int i;
  
  FUNC0(ads->udpsocket >= 0);

  for (i=0; i<ads->nsortlist; i++)
    FUNC0(!(ads->sortlist[i].base.s_addr & ~ads->sortlist[i].mask.s_addr));

  FUNC0(ads->tcpserver >= 0 && ads->tcpserver < ads->nservers);

  switch (ads->tcpstate) {
  case server_connecting:
    FUNC0(ads->tcpsocket >= 0);
    FUNC1(ads);
    break;
  case server_disconnected:
  case server_broken:
    FUNC0(ads->tcpsocket == -1);
    FUNC1(ads);
    break;
  case server_ok:
    FUNC0(ads->tcpsocket >= 0);
    FUNC0(ads->tcprecv_skip <= ads->tcprecv.used);
    break;
  default:
    FUNC0(!"ads->tcpstate value");
  }

  FUNC0(ads->searchlist || !ads->nsearchlist);
}