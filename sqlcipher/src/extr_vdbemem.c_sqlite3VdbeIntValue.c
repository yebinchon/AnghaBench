
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_8__ {int r; int i; } ;
struct TYPE_9__ {int flags; scalar_t__ n; scalar_t__ z; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int assert (int) ;
 int doubleToInt64 (int ) ;
 int memIntValue (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

i64 sqlite3VdbeIntValue(Mem *pMem){
  int flags;
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );
  flags = pMem->flags;
  if( flags & MEM_Int ){
    return pMem->u.i;
  }else if( flags & MEM_Real ){
    return doubleToInt64(pMem->u.r);
  }else if( flags & (MEM_Str|MEM_Blob) ){
    assert( pMem->z || pMem->n==0 );
    return memIntValue(pMem);
  }else{
    return 0;
  }
}
