
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef int Snapshot ;
typedef TYPE_1__ MultiCursor ;


 int CURSOR_IGNORE_DELETE ;
 int CURSOR_IGNORE_SYSTEM ;
 int LSM_OK ;
 int TREE_BOTH ;
 int multiCursorAddAll (TYPE_1__*,int *) ;
 int multiCursorAddTree (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int multiCursorInit(MultiCursor *pCsr, Snapshot *pSnap){
  int rc;
  rc = multiCursorAddAll(pCsr, pSnap);
  if( rc==LSM_OK ){
    rc = multiCursorAddTree(pCsr, pSnap, TREE_BOTH);
  }
  pCsr->flags |= (CURSOR_IGNORE_SYSTEM | CURSOR_IGNORE_DELETE);
  return rc;
}
