
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pCursor; } ;
struct TYPE_7__ {scalar_t__ eCurType; int* aAltMap; TYPE_1__ uc; struct TYPE_7__* pAltCursor; scalar_t__ deferredMoveto; } ;
typedef TYPE_2__ VdbeCursor ;


 scalar_t__ CURTYPE_BTREE ;
 scalar_t__ CURTYPE_PSEUDO ;
 int SQLITE_OK ;
 int assert (int) ;
 int handleDeferredMoveto (TYPE_2__*) ;
 int handleMovedCursor (TYPE_2__*) ;
 scalar_t__ sqlite3BtreeCursorHasMoved (int ) ;

int sqlite3VdbeCursorMoveto(VdbeCursor **pp, int *piCol){
  VdbeCursor *p = *pp;
  assert( p->eCurType==CURTYPE_BTREE || p->eCurType==CURTYPE_PSEUDO );
  if( p->deferredMoveto ){
    int iMap;
    if( p->aAltMap && (iMap = p->aAltMap[1+*piCol])>0 ){
      *pp = p->pAltCursor;
      *piCol = iMap - 1;
      return SQLITE_OK;
    }
    return handleDeferredMoveto(p);
  }
  if( sqlite3BtreeCursorHasMoved(p->uc.pCursor) ){
    return handleMovedCursor(p);
  }
  return SQLITE_OK;
}
