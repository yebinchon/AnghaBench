
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {char* z; int flags; int n; } ;
typedef TYPE_1__ Mem ;
typedef int BtCursor ;


 int MEM_Blob ;
 int MEM_Ephem ;
 int SQLITE_OK ;
 int VdbeMemDynamic (TYPE_1__*) ;
 int assert (int) ;
 int sqlite3BtreeCursorIsValid (int *) ;
 scalar_t__ sqlite3BtreePayloadFetch (int *,scalar_t__*) ;
 int sqlite3VdbeMemIsRowSet (TYPE_1__*) ;
 int vdbeMemFromBtreeResize (int *,scalar_t__,scalar_t__,TYPE_1__*) ;

int sqlite3VdbeMemFromBtree(
  BtCursor *pCur,
  u32 offset,
  u32 amt,
  Mem *pMem
){
  char *zData;
  u32 available = 0;
  int rc = SQLITE_OK;

  assert( sqlite3BtreeCursorIsValid(pCur) );
  assert( !VdbeMemDynamic(pMem) );



  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  zData = (char *)sqlite3BtreePayloadFetch(pCur, &available);
  assert( zData!=0 );

  if( offset+amt<=available ){
    pMem->z = &zData[offset];
    pMem->flags = MEM_Blob|MEM_Ephem;
    pMem->n = (int)amt;
  }else{
    rc = vdbeMemFromBtreeResize(pCur, offset, amt, pMem);
  }

  return rc;
}
