#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nMaxFrame; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Error ;
typedef  TYPE_2__ CheckpointStarvationCtx ;

/* Variables and functions */
 int CHECKPOINT_STARVATION_FRAMELIMIT ; 
 int /*<<< orphan*/  SQLITE_CHECKPOINT_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC3(int nMs){
  Error err = {0};
  CheckpointStarvationCtx ctx = { SQLITE_CHECKPOINT_PASSIVE, 0 };
  FUNC0(nMs, &ctx);
  if( ctx.nMaxFrame<(CHECKPOINT_STARVATION_FRAMELIMIT*10) ){
    FUNC2(&err, "WAL failed to grow - %d frames", ctx.nMaxFrame);
  }
  FUNC1(&err);
}