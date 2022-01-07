
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int r; } ;
struct TYPE_10__ {TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 int MEM_Real ;
 int MemSetTypeFlag (TYPE_3__*,int ) ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3VdbeRealValue (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

int sqlite3VdbeMemRealify(Mem *pMem){
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );

  pMem->u.r = sqlite3VdbeRealValue(pMem);
  MemSetTypeFlag(pMem, MEM_Real);
  return SQLITE_OK;
}
