#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nMerge; int /*<<< orphan*/  pWorker; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_8__ {scalar_t__ iAge; scalar_t__ nRight; } ;
typedef  TYPE_2__ Level ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(lsm_db *pDb){
  Level *pTop = FUNC1(pDb->pWorker);

  if( FUNC0(pDb) ) return 1;
  if( pTop && pTop->iAge==0
   && (pTop->nRight || FUNC2(pTop)>=pDb->nMerge)
  ){
    return 1;
  }
  return 0;
}