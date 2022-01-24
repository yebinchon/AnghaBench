#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  TYPE_1__* adns_state ;
struct TYPE_5__ {int tcpstate; int /*<<< orphan*/  tcpsocket; } ;
typedef  int /*<<< orphan*/  ADNS_SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  cc_entex ; 
#define  server_broken 131 
#define  server_connecting 130 
#define  server_disconnected 129 
#define  server_ok 128 

int FUNC3(adns_state ads, ADNS_SOCKET fd, const struct timeval *now) {
  FUNC1(ads,0,cc_entex);
  switch (ads->tcpstate) {
  case server_disconnected:
  case server_broken:
    break;
  case server_connecting:
  case server_ok:
    if (fd != ads->tcpsocket) break;
    FUNC2(ads,"poll/select","exceptional condition detected");
    break;
  default:
    FUNC0();
  }
  FUNC1(ads,0,cc_entex);
  return 0;
}