#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_4__ {struct TYPE_4__* aRhs; struct TYPE_4__* pMerge; struct TYPE_4__* pSplitKey; } ;
typedef  TYPE_1__ Level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(lsm_env *pEnv, Level *p){
  if( p ){
    FUNC0(pEnv, p->pSplitKey);
    FUNC0(pEnv, p->pMerge);
    FUNC0(pEnv, p->aRhs);
    FUNC0(pEnv, p);
  }
}