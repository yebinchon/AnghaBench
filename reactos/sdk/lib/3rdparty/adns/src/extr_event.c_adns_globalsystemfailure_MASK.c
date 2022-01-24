#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* adns_state ;
struct TYPE_8__ {scalar_t__ head; } ;
struct TYPE_7__ {scalar_t__ head; } ;
struct TYPE_9__ {int tcpstate; TYPE_2__ tcpw; TYPE_1__ udpw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adns_s_systemfail ; 
 int /*<<< orphan*/  cc_entex ; 
#define  server_broken 131 
#define  server_connecting 130 
#define  server_disconnected 129 
#define  server_ok 128 

void FUNC4(adns_state ads) {
  FUNC1(ads,0,cc_entex);

  while (ads->udpw.head) FUNC2(ads->udpw.head, adns_s_systemfail);
  while (ads->tcpw.head) FUNC2(ads->tcpw.head, adns_s_systemfail);

  switch (ads->tcpstate) {
  case server_connecting:
  case server_ok:
    FUNC3(ads,0,0);
    break;
  case server_disconnected:
  case server_broken:
    break;
  default:
    FUNC0();
  }
  FUNC1(ads,0,cc_entex);
}