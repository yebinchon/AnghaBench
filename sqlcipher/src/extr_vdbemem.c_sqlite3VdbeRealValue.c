
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {double r; scalar_t__ i; } ;
struct TYPE_9__ {int flags; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int assert (int) ;
 double memRealValue (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

double sqlite3VdbeRealValue(Mem *pMem){
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );
  if( pMem->flags & MEM_Real ){
    return pMem->u.r;
  }else if( pMem->flags & MEM_Int ){
    return (double)pMem->u.i;
  }else if( pMem->flags & (MEM_Str|MEM_Blob) ){
    return memRealValue(pMem);
  }else{

    return (double)0;
  }
}
