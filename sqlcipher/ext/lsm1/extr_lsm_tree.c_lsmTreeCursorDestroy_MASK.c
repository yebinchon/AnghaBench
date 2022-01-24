#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* pDb; int /*<<< orphan*/  blob; } ;
typedef  TYPE_1__ TreeCursor ;
struct TYPE_6__ {int /*<<< orphan*/  pEnv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC2(TreeCursor *pCsr){
  if( pCsr ){
    FUNC1(pCsr->pDb, &pCsr->blob);
    FUNC0(pCsr->pDb->pEnv, pCsr);
  }
}