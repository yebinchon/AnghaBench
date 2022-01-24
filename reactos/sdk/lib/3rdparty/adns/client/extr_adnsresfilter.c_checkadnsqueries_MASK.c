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
struct treething {scalar_t__ qu; int /*<<< orphan*/ * ans; } ;
typedef  scalar_t__ adns_query ;
typedef  int /*<<< orphan*/  adns_answer ;

/* Variables and functions */
 int EAGAIN ; 
 int ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ **,void**) ; 
 int /*<<< orphan*/  ads ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void) {
  adns_query qu;
  adns_answer *ans;
  void *context;
  struct treething *foundthing;
  int r;

  for (;;) {
    qu= 0; context= 0; ans= 0;
    r= FUNC0(ads,&qu,&ans,&context);
    if (r == ESRCH || r == EAGAIN) break;
    FUNC1(!r);
    foundthing= context;
    foundthing->ans= ans;
    foundthing->qu= 0;
  }
}