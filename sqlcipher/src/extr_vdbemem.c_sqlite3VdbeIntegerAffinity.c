
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_8__ {scalar_t__ r; scalar_t__ i; } ;
struct TYPE_10__ {int flags; TYPE_1__ u; TYPE_2__* db; } ;
struct TYPE_9__ {int mutex; } ;
typedef TYPE_3__ Mem ;


 int EIGHT_BYTE_ALIGNMENT (TYPE_3__*) ;
 scalar_t__ LARGEST_INT64 ;
 int MEM_Int ;
 int MEM_Real ;
 int MemSetTypeFlag (TYPE_3__*,int ) ;
 scalar_t__ SMALLEST_INT64 ;
 int assert (int) ;
 scalar_t__ doubleToInt64 (scalar_t__) ;
 int sqlite3VdbeMemIsRowSet (TYPE_3__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

void sqlite3VdbeIntegerAffinity(Mem *pMem){
  i64 ix;
  assert( pMem->flags & MEM_Real );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( EIGHT_BYTE_ALIGNMENT(pMem) );

  ix = doubleToInt64(pMem->u.r);
  if( pMem->u.r==ix && ix>SMALLEST_INT64 && ix<LARGEST_INT64 ){
    pMem->u.i = ix;
    MemSetTypeFlag(pMem, MEM_Int);
  }
}
