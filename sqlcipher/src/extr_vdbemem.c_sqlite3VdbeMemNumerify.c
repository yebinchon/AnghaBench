
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {int i; int r; } ;
struct TYPE_8__ {int flags; TYPE_2__ u; int enc; int n; int z; TYPE_1__* db; } ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;
 int MEM_Zero ;
 int MemSetTypeFlag (TYPE_3__*,int) ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3AtoF (int ,int *,int ,int ) ;
 int sqlite3Atoi64 (int ,int *,int ,int ) ;
 scalar_t__ sqlite3RealSameAsInt (int ,int ) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

int sqlite3VdbeMemNumerify(Mem *pMem){
  if( (pMem->flags & (MEM_Int|MEM_Real|MEM_Null))==0 ){
    int rc;
    assert( (pMem->flags & (MEM_Blob|MEM_Str))!=0 );
    assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
    rc = sqlite3Atoi64(pMem->z, &pMem->u.i, pMem->n, pMem->enc);
    if( rc==0 ){
      MemSetTypeFlag(pMem, MEM_Int);
    }else{
      i64 i = pMem->u.i;
      sqlite3AtoF(pMem->z, &pMem->u.r, pMem->n, pMem->enc);
      if( rc==1 && sqlite3RealSameAsInt(pMem->u.r, i) ){
        pMem->u.i = i;
        MemSetTypeFlag(pMem, MEM_Int);
      }else{
        MemSetTypeFlag(pMem, MEM_Real);
      }
    }
  }
  assert( (pMem->flags & (MEM_Int|MEM_Real|MEM_Null))!=0 );
  pMem->flags &= ~(MEM_Str|MEM_Blob|MEM_Zero);
  return SQLITE_OK;
}
