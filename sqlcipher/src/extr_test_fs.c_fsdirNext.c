
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ pEntry; int iRowid; scalar_t__ pDir; } ;
typedef TYPE_1__ FsdirCsr ;


 int SQLITE_OK ;
 int closedir (scalar_t__) ;
 scalar_t__ readdir (scalar_t__) ;

__attribute__((used)) static int fsdirNext(sqlite3_vtab_cursor *cur){
  FsdirCsr *pCsr = (FsdirCsr*)cur;

  if( pCsr->pDir ){
    pCsr->pEntry = readdir(pCsr->pDir);
    if( pCsr->pEntry==0 ){
      closedir(pCsr->pDir);
      pCsr->pDir = 0;
    }
    pCsr->iRowid++;
  }

  return SQLITE_OK;
}
