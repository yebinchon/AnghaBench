
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nResColumn; TYPE_3__* aColName; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ Mem ;


 int COLNAME_N ;
 int MEM_Term ;
 void SQLITE_DYNAMIC (void*) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3VdbeMemSetStr (TYPE_3__*,char const*,int,int ,void (*) (void*)) ;

int sqlite3VdbeSetColName(
  Vdbe *p,
  int idx,
  int var,
  const char *zName,
  void (*xDel)(void*)
){
  int rc;
  Mem *pColName;
  assert( idx<p->nResColumn );
  assert( var<COLNAME_N );
  if( p->db->mallocFailed ){
    assert( !zName || xDel!=SQLITE_DYNAMIC );
    return SQLITE_NOMEM_BKPT;
  }
  assert( p->aColName!=0 );
  pColName = &(p->aColName[idx+var*p->nResColumn]);
  rc = sqlite3VdbeMemSetStr(pColName, zName, -1, SQLITE_UTF8, xDel);
  assert( rc!=0 || !zName || (pColName->flags&MEM_Term)!=0 );
  return rc;
}
