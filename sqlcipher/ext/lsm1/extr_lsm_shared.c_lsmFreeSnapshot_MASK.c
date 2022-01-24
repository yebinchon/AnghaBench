#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_7__ {TYPE_3__* a; } ;
struct TYPE_6__ {TYPE_3__* aEntry; } ;
struct TYPE_8__ {TYPE_2__ redirect; TYPE_1__ freelist; int /*<<< orphan*/  pLevel; } ;
typedef  TYPE_3__ Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(lsm_env *pEnv, Snapshot *p){
  if( p ){
    FUNC1(pEnv, p->pLevel);
    FUNC0(pEnv, p->freelist.aEntry);
    FUNC0(pEnv, p->redirect.a);
    FUNC0(pEnv, p);
  }
}