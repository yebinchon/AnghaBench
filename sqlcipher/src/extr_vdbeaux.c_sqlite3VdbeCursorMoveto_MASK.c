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
struct TYPE_6__ {int /*<<< orphan*/  pCursor; } ;
struct TYPE_7__ {scalar_t__ eCurType; int* aAltMap; TYPE_1__ uc; struct TYPE_7__* pAltCursor; scalar_t__ deferredMoveto; } ;
typedef  TYPE_2__ VdbeCursor ;

/* Variables and functions */
 scalar_t__ CURTYPE_BTREE ; 
 scalar_t__ CURTYPE_PSEUDO ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(VdbeCursor **pp, int *piCol){
  VdbeCursor *p = *pp;
  FUNC0( p->eCurType==CURTYPE_BTREE || p->eCurType==CURTYPE_PSEUDO );
  if( p->deferredMoveto ){
    int iMap;
    if( p->aAltMap && (iMap = p->aAltMap[1+*piCol])>0 ){
      *pp = p->pAltCursor;
      *piCol = iMap - 1;
      return SQLITE_OK;
    }
    return FUNC1(p);
  }
  if( FUNC3(p->uc.pCursor) ){
    return FUNC2(p);
  }
  return SQLITE_OK;
}