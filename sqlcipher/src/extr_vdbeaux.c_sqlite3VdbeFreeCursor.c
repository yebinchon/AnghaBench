
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
struct TYPE_14__ {int (* xClose ) (TYPE_3__*) ;} ;
typedef TYPE_4__ sqlite3_module ;
struct TYPE_11__ {TYPE_3__* pVCur; int pCursor; } ;
struct TYPE_15__ {scalar_t__ pBtx; int eCurType; TYPE_1__ uc; int isEphemeral; } ;
typedef TYPE_5__ VdbeCursor ;
struct TYPE_16__ {int db; } ;
typedef TYPE_6__ Vdbe ;
struct TYPE_12__ {int nRef; TYPE_4__* pModule; } ;





 int assert (int) ;
 int sqlite3BtreeClose (scalar_t__) ;
 int sqlite3BtreeCloseCursor (int ) ;
 int sqlite3VdbeSorterClose (int ,TYPE_5__*) ;
 int stub1 (TYPE_3__*) ;

void sqlite3VdbeFreeCursor(Vdbe *p, VdbeCursor *pCx){
  if( pCx==0 ){
    return;
  }
  assert( pCx->pBtx==0 || pCx->eCurType==130 );
  switch( pCx->eCurType ){
    case 129: {
      sqlite3VdbeSorterClose(p->db, pCx);
      break;
    }
    case 130: {
      if( pCx->isEphemeral ){
        if( pCx->pBtx ) sqlite3BtreeClose(pCx->pBtx);


      }else{
        assert( pCx->uc.pCursor!=0 );
        sqlite3BtreeCloseCursor(pCx->uc.pCursor);
      }
      break;
    }

    case 128: {
      sqlite3_vtab_cursor *pVCur = pCx->uc.pVCur;
      const sqlite3_module *pModule = pVCur->pVtab->pModule;
      assert( pVCur->pVtab->nRef>0 );
      pVCur->pVtab->nRef--;
      pModule->xClose(pVCur);
      break;
    }

  }
}
