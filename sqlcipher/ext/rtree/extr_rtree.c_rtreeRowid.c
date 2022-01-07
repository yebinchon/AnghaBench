
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {int iCell; } ;
typedef TYPE_1__ RtreeSearchPoint ;
typedef int RtreeNode ;
typedef int RtreeCursor ;


 int RTREE_OF_CURSOR (int *) ;
 int SQLITE_OK ;
 int nodeGetRowid (int ,int *,int ) ;
 int * rtreeNodeOfFirstSearchPoint (int *,int*) ;
 TYPE_1__* rtreeSearchPointFirst (int *) ;

__attribute__((used)) static int rtreeRowid(sqlite3_vtab_cursor *pVtabCursor, sqlite_int64 *pRowid){
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  RtreeSearchPoint *p = rtreeSearchPointFirst(pCsr);
  int rc = SQLITE_OK;
  RtreeNode *pNode = rtreeNodeOfFirstSearchPoint(pCsr, &rc);
  if( rc==SQLITE_OK && p ){
    *pRowid = nodeGetRowid(RTREE_OF_CURSOR(pCsr), pNode, p->iCell);
  }
  return rc;
}
