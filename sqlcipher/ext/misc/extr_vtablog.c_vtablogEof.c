
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nRow; int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
struct TYPE_6__ {scalar_t__ iRowid; int iCursor; } ;
typedef TYPE_2__ vtablog_cursor ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;


 int printf (char*,int,int,int) ;

__attribute__((used)) static int vtablogEof(sqlite3_vtab_cursor *cur){
  vtablog_cursor *pCur = (vtablog_cursor*)cur;
  vtablog_vtab *pTab = (vtablog_vtab*)cur->pVtab;
  int rc = pCur->iRowid >= pTab->nRow;
  printf("vtablogEof(tab=%d, cursor=%d): %d\n",
         pTab->iInst, pCur->iCursor, rc);
  return rc;
}
