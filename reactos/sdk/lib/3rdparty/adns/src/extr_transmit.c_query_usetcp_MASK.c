#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  TYPE_1__* adns_query ;
struct TYPE_7__ {int /*<<< orphan*/  tcpw; } ;
struct TYPE_6__ {TYPE_3__* ads; struct timeval timeout; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TCPWAITMS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct timeval) ; 
 int /*<<< orphan*/  query_tcpw ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(adns_query qu, struct timeval now) {
  qu->state= query_tcpw;
  qu->timeout= now;
  FUNC3(&qu->timeout,TCPWAITMS);
  FUNC0(qu->ads->tcpw,qu);
  FUNC1(qu,now);
  FUNC2(qu->ads,now);
}