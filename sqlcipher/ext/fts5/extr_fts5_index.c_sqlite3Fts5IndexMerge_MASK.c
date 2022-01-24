#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* pConfig; } ;
struct TYPE_18__ {scalar_t__ nLevel; } ;
struct TYPE_17__ {int nUsermerge; } ;
typedef  TYPE_2__ Fts5Structure ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__**,int,int) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 

int FUNC7(Fts5Index *p, int nMerge){
  Fts5Structure *pStruct = FUNC4(p);
  if( pStruct ){
    int nMin = p->pConfig->nUsermerge;
    FUNC3(p);
    if( nMerge<0 ){
      Fts5Structure *pNew = FUNC1(p, pStruct);
      FUNC5(pStruct);
      pStruct = pNew;
      nMin = 2;
      nMerge = nMerge*-1;
    }
    if( pStruct && pStruct->nLevel ){
      if( FUNC0(p, &pStruct, nMerge, nMin) ){
        FUNC6(p, pStruct);
      }
    }
    FUNC5(pStruct);
  }
  return FUNC2(p);
}