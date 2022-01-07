
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Tcl_Obj ;
struct TYPE_4__ {int evalFlags; int * pArray; int * pSql; int zSql; int * pDb; } ;
typedef int SqliteDb ;
typedef TYPE_1__ DbEvalContext ;


 int Tcl_GetString (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void dbEvalInit(
  DbEvalContext *p,
  SqliteDb *pDb,
  Tcl_Obj *pSql,
  Tcl_Obj *pArray,
  int evalFlags
){
  memset(p, 0, sizeof(DbEvalContext));
  p->pDb = pDb;
  p->zSql = Tcl_GetString(pSql);
  p->pSql = pSql;
  Tcl_IncrRefCount(pSql);
  if( pArray ){
    p->pArray = pArray;
    Tcl_IncrRefCount(pArray);
  }
  p->evalFlags = evalFlags;
}
