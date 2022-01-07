
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {char* z; int flags; int xDel; int * db; } ;
typedef int RowSet ;
typedef TYPE_1__ Mem ;


 int MEM_Blob ;
 int MEM_Dyn ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3RowSetDelete ;
 int * sqlite3RowSetInit (int *) ;
 int sqlite3VdbeMemIsRowSet (TYPE_1__*) ;
 int sqlite3VdbeMemRelease (TYPE_1__*) ;

int sqlite3VdbeMemSetRowSet(Mem *pMem){
  sqlite3 *db = pMem->db;
  RowSet *p;
  assert( db!=0 );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );
  sqlite3VdbeMemRelease(pMem);
  p = sqlite3RowSetInit(db);
  if( p==0 ) return SQLITE_NOMEM;
  pMem->z = (char*)p;
  pMem->flags = MEM_Blob|MEM_Dyn;
  pMem->xDel = sqlite3RowSetDelete;
  return SQLITE_OK;
}
