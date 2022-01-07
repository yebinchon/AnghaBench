
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ inTransaction; } ;
typedef TYPE_1__ echo_vtab ;


 int SQLITE_ERROR ;
 int assert (scalar_t__) ;
 int echoTransactionCall (int *,char*) ;
 scalar_t__ simulateVtabError (TYPE_1__*,char*) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;

__attribute__((used)) static int echoCommit(sqlite3_vtab *tab){
  echo_vtab *pVtab = (echo_vtab*)tab;
  int rc;



  assert( pVtab->inTransaction );

  if( simulateVtabError(pVtab, "xCommit") ){
    return SQLITE_ERROR;
  }

  sqlite3BeginBenignMalloc();
  rc = echoTransactionCall(tab, "xCommit");
  sqlite3EndBenignMalloc();
  pVtab->inTransaction = 0;
  return rc;
}
