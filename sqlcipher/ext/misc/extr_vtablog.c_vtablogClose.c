
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
struct TYPE_7__ {int iCursor; } ;
typedef TYPE_2__ vtablog_cursor ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int printf (char*,int,int) ;
 int sqlite3_free (TYPE_3__*) ;

__attribute__((used)) static int vtablogClose(sqlite3_vtab_cursor *cur){
  vtablog_cursor *pCur = (vtablog_cursor*)cur;
  vtablog_vtab *pTab = (vtablog_vtab*)cur->pVtab;
  printf("vtablogClose(tab=%d, cursor=%d)\n", pTab->iInst, pCur->iCursor);
  sqlite3_free(cur);
  return SQLITE_OK;
}
