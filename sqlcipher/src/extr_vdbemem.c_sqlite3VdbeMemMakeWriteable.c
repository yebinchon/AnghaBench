
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; scalar_t__ szMalloc; scalar_t__ z; scalar_t__ zMalloc; scalar_t__ pScopyFrom; TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_2__ Mem ;


 scalar_t__ ExpandBlob (TYPE_2__*) ;
 int MEM_Blob ;
 int MEM_Ephem ;
 int MEM_Str ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3VdbeMemIsRowSet (TYPE_2__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 int vdbeMemAddTerminator (TYPE_2__*) ;

int sqlite3VdbeMemMakeWriteable(Mem *pMem){
  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  if( (pMem->flags & (MEM_Str|MEM_Blob))!=0 ){
    if( ExpandBlob(pMem) ) return SQLITE_NOMEM;
    if( pMem->szMalloc==0 || pMem->z!=pMem->zMalloc ){
      int rc = vdbeMemAddTerminator(pMem);
      if( rc ) return rc;
    }
  }
  pMem->flags &= ~MEM_Ephem;




  return SQLITE_OK;
}
