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
struct timeval {int dummy; } ;
typedef  TYPE_2__* adns_state ;
typedef  TYPE_3__* adns_query ;
struct TYPE_9__ {scalar_t__ state; struct TYPE_9__* next; } ;
struct TYPE_7__ {TYPE_3__* head; } ;
struct TYPE_8__ {scalar_t__ tcpstate; TYPE_1__ tcpw; int /*<<< orphan*/  tcpserver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ query_tcpw ; 
 scalar_t__ server_ok ; 

__attribute__((used)) static void FUNC3(adns_state ads, struct timeval now) {
  adns_query qu, nqu;

  FUNC0(ads,ads->tcpserver,0,"TCP connected");
  ads->tcpstate= server_ok;
  for (qu= ads->tcpw.head; qu && ads->tcpstate == server_ok; qu= nqu) {
    nqu= qu->next;
    FUNC2(qu->state == query_tcpw);
    FUNC1(qu,now);
  }
}