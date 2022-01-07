
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pCursor; } ;
struct TYPE_6__ {scalar_t__ eCurType; TYPE_1__ uc; } ;
typedef TYPE_2__ VdbeCursor ;


 scalar_t__ CURTYPE_BTREE ;
 int SQLITE_OK ;
 int assert (int) ;
 int handleMovedCursor (TYPE_2__*) ;
 scalar_t__ sqlite3BtreeCursorHasMoved (int ) ;

int sqlite3VdbeCursorRestore(VdbeCursor *p){
  assert( p->eCurType==CURTYPE_BTREE );
  if( sqlite3BtreeCursorHasMoved(p->uc.pCursor) ){
    return handleMovedCursor(p);
  }
  return SQLITE_OK;
}
