
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {scalar_t__ inTransaction; } ;
typedef TYPE_1__ echo_vtab ;


 int assert (scalar_t__) ;
 int echoTransactionCall (int *,char*) ;

__attribute__((used)) static int echoRollback(sqlite3_vtab *tab){
  int rc;
  echo_vtab *pVtab = (echo_vtab*)tab;



  assert( pVtab->inTransaction );

  rc = echoTransactionCall(tab, "xRollback");
  pVtab->inTransaction = 0;
  return rc;
}
