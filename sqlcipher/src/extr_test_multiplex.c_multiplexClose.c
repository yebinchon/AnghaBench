
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
typedef int multiplexGroup ;
struct TYPE_2__ {int * pGroup; } ;
typedef TYPE_1__ multiplexConn ;


 int SQLITE_OK ;
 int multiplexFreeComponents (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int multiplexClose(sqlite3_file *pConn){
  multiplexConn *p = (multiplexConn*)pConn;
  multiplexGroup *pGroup = p->pGroup;
  int rc = SQLITE_OK;
  multiplexFreeComponents(pGroup);
  sqlite3_free(pGroup);
  return rc;
}
