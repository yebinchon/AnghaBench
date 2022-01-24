#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* pVtab; } ;
typedef  TYPE_3__ sqlite3_vtab_cursor ;
struct TYPE_14__ {int /*<<< orphan*/  (* xClose ) (TYPE_3__*) ;} ;
typedef  TYPE_4__ sqlite3_module ;
struct TYPE_11__ {TYPE_3__* pVCur; int /*<<< orphan*/  pCursor; } ;
struct TYPE_15__ {scalar_t__ pBtx; int eCurType; TYPE_1__ uc; int /*<<< orphan*/  isEphemeral; } ;
typedef  TYPE_5__ VdbeCursor ;
struct TYPE_16__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_6__ Vdbe ;
struct TYPE_12__ {int /*<<< orphan*/  nRef; TYPE_4__* pModule; } ;

/* Variables and functions */
#define  CURTYPE_BTREE 130 
#define  CURTYPE_SORTER 129 
#define  CURTYPE_VTAB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(Vdbe *p, VdbeCursor *pCx){
  if( pCx==0 ){
    return;
  }
  FUNC0( pCx->pBtx==0 || pCx->eCurType==CURTYPE_BTREE );
  switch( pCx->eCurType ){
    case CURTYPE_SORTER: {
      FUNC3(p->db, pCx);
      break;
    }
    case CURTYPE_BTREE: {
      if( pCx->isEphemeral ){
        if( pCx->pBtx ) FUNC1(pCx->pBtx);
        /* The pCx->pCursor will be close automatically, if it exists, by
        ** the call above. */
      }else{
        FUNC0( pCx->uc.pCursor!=0 );
        FUNC2(pCx->uc.pCursor);
      }
      break;
    }
#ifndef SQLITE_OMIT_VIRTUALTABLE
    case CURTYPE_VTAB: {
      sqlite3_vtab_cursor *pVCur = pCx->uc.pVCur;
      const sqlite3_module *pModule = pVCur->pVtab->pModule;
      FUNC0( pVCur->pVtab->nRef>0 );
      pVCur->pVtab->nRef--;
      pModule->xClose(pVCur);
      break;
    }
#endif
  }
}