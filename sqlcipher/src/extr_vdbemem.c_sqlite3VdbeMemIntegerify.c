
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int i; } ;
struct TYPE_11__ {TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 int MEM_Int ;
 int MemSetTypeFlag (TYPE_3__*,int ) ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3VdbeIntValue (TYPE_3__*) ;
 int sqlite3VdbeMemIsRowSet (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

int sqlite3VdbeMemIntegerify(Mem *pMem){
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );

  pMem->u.i = sqlite3VdbeIntValue(pMem);
  MemSetTypeFlag(pMem, MEM_Int);
  return SQLITE_OK;
}
