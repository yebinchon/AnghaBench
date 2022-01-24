#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ i64 ;
struct TYPE_3__ {scalar_t__ iLsmId; int /*<<< orphan*/  iTreeId; } ;
typedef  TYPE_1__ ShmReader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(ShmReader *p, i64 iLsm, u32 iShmMin, u32 iShmMax){
  return( 
      p->iLsmId && p->iLsmId<=iLsm 
      && FUNC0(iShmMax, p->iTreeId)
      && FUNC0(p->iTreeId, iShmMin)
  );
}