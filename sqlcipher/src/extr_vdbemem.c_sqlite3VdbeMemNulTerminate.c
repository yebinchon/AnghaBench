
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* db; } ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_2__ Mem ;


 int MEM_Str ;
 int MEM_Term ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 int testcase (int) ;
 int vdbeMemAddTerminator (TYPE_2__*) ;

int sqlite3VdbeMemNulTerminate(Mem *pMem){
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  testcase( (pMem->flags & (MEM_Term|MEM_Str))==(MEM_Term|MEM_Str) );
  testcase( (pMem->flags & (MEM_Term|MEM_Str))==0 );
  if( (pMem->flags & (MEM_Term|MEM_Str))!=MEM_Str ){
    return SQLITE_OK;
  }else{
    return vdbeMemAddTerminator(pMem);
  }
}
