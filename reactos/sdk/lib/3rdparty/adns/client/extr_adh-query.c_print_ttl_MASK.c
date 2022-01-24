#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long time_t ;
struct TYPE_4__ {int ttl; } ;
struct query_node {TYPE_1__ pqfr; } ;
struct TYPE_5__ {unsigned long expires; } ;
typedef  TYPE_2__ adns_answer ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long*) ; 
#define  tm_abs 130 
#define  tm_none 129 
#define  tm_rel 128 

__attribute__((used)) static void FUNC5(struct query_node *qun, adns_answer *answer) {
  unsigned long ttl;
  time_t now;

  switch (qun->pqfr.ttl) {
  case tm_none:
    return;
  case tm_rel:
    if (FUNC4(&now) == (time_t)-1) FUNC3("get current time",errno);
    ttl= answer->expires < now ? 0 : answer->expires - now;
    break;
  case tm_abs:
    ttl= answer->expires;
    break;
  default:
    FUNC0();
  }
  if (FUNC2("%lu ",ttl) == EOF) FUNC1();
}