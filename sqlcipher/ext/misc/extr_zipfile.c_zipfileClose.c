
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_7__ {TYPE_3__* pCsrList; } ;
typedef TYPE_2__ ZipfileTab ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {struct TYPE_8__* pCsrNext; TYPE_1__ base; } ;
typedef TYPE_3__ ZipfileCsr ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_3__*) ;
 int zipfileResetCursor (TYPE_3__*) ;

__attribute__((used)) static int zipfileClose(sqlite3_vtab_cursor *cur){
  ZipfileCsr *pCsr = (ZipfileCsr*)cur;
  ZipfileTab *pTab = (ZipfileTab*)(pCsr->base.pVtab);
  ZipfileCsr **pp;
  zipfileResetCursor(pCsr);


  for(pp=&pTab->pCsrList; *pp!=pCsr; pp=&((*pp)->pCsrNext));
  *pp = pCsr->pCsrNext;

  sqlite3_free(pCsr);
  return SQLITE_OK;
}
