
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nZero; } ;
struct TYPE_11__ {int flags; int n; TYPE_2__ u; int * z; TYPE_1__* db; } ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int MEM_Blob ;
 int MEM_Term ;
 int MEM_Zero ;
 scalar_t__ MemNullNochng (TYPE_3__*) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ sqlite3VdbeMemGrow (TYPE_3__*,int,int) ;
 int sqlite3VdbeMemIsRowSet (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 int sqlite3_value_nochange (TYPE_3__*) ;
 int testcase (int ) ;

int sqlite3VdbeMemExpandBlob(Mem *pMem){
  int nByte;
  assert( pMem->flags & MEM_Zero );
  assert( (pMem->flags&MEM_Blob)!=0 || MemNullNochng(pMem) );
  testcase( sqlite3_value_nochange(pMem) );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );


  nByte = pMem->n + pMem->u.nZero;
  if( nByte<=0 ){
    if( (pMem->flags & MEM_Blob)==0 ) return SQLITE_OK;
    nByte = 1;
  }
  if( sqlite3VdbeMemGrow(pMem, nByte, 1) ){
    return SQLITE_NOMEM_BKPT;
  }

  memset(&pMem->z[pMem->n], 0, pMem->u.nZero);
  pMem->n += pMem->u.nZero;
  pMem->flags &= ~(MEM_Zero|MEM_Term);
  return SQLITE_OK;
}
