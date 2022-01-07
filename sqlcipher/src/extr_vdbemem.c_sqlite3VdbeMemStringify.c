
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_10__ {int r; int i; } ;
struct TYPE_11__ {int flags; scalar_t__ enc; int z; int n; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int MEM_Term ;
 int MEM_Zero ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3Strlen30NN (int ) ;
 int sqlite3VdbeChangeEncoding (TYPE_3__*,scalar_t__) ;
 scalar_t__ sqlite3VdbeMemClearAndResize (TYPE_3__*,int const) ;
 int sqlite3VdbeMemIsRowSet (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 int sqlite3_snprintf (int const,int ,char*,int ) ;

int sqlite3VdbeMemStringify(Mem *pMem, u8 enc, u8 bForce){
  int fg = pMem->flags;
  const int nByte = 32;

  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( !(fg&MEM_Zero) );
  assert( !(fg&(MEM_Str|MEM_Blob)) );
  assert( fg&(MEM_Int|MEM_Real) );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );


  if( sqlite3VdbeMemClearAndResize(pMem, nByte) ){
    pMem->enc = 0;
    return SQLITE_NOMEM_BKPT;
  }







  if( fg & MEM_Int ){
    sqlite3_snprintf(nByte, pMem->z, "%lld", pMem->u.i);
  }else{
    assert( fg & MEM_Real );
    sqlite3_snprintf(nByte, pMem->z, "%!.15g", pMem->u.r);
  }
  assert( pMem->z!=0 );
  pMem->n = sqlite3Strlen30NN(pMem->z);
  pMem->enc = SQLITE_UTF8;
  pMem->flags |= MEM_Str|MEM_Term;
  if( bForce ) pMem->flags &= ~(MEM_Int|MEM_Real);
  sqlite3VdbeChangeEncoding(pMem, enc);
  return SQLITE_OK;
}
