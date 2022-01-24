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
struct TYPE_6__ {scalar_t__ nRef; int nLevel; TYPE_1__* aLevel; } ;
struct TYPE_5__ {TYPE_2__* aSeg; } ;
typedef  TYPE_2__ Fts5Structure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(Fts5Structure *pStruct){
  if( pStruct && 0>=(--pStruct->nRef) ){
    int i;
    FUNC0( pStruct->nRef==0 );
    for(i=0; i<pStruct->nLevel; i++){
      FUNC1(pStruct->aLevel[i].aSeg);
    }
    FUNC1(pStruct);
  }
}