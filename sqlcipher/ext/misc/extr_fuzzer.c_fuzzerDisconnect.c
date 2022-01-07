
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_4__ {scalar_t__ nCursor; struct TYPE_4__* pNext; struct TYPE_4__* pRule; } ;
typedef TYPE_1__ fuzzer_vtab ;
typedef TYPE_1__ fuzzer_rule ;


 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int fuzzerDisconnect(sqlite3_vtab *pVtab){
  fuzzer_vtab *p = (fuzzer_vtab*)pVtab;
  assert( p->nCursor==0 );
  while( p->pRule ){
    fuzzer_rule *pRule = p->pRule;
    p->pRule = pRule->pNext;
    sqlite3_free(pRule);
  }
  sqlite3_free(p);
  return SQLITE_OK;
}
