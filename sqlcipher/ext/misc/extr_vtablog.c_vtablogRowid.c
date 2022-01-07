
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
struct TYPE_6__ {int iCursor; scalar_t__ iRowid; } ;
typedef TYPE_2__ vtablog_cursor ;
typedef scalar_t__ sqlite_int64 ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int vtablogRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  vtablog_cursor *pCur = (vtablog_cursor*)cur;
  vtablog_vtab *pTab = (vtablog_vtab*)cur->pVtab;
  printf("vtablogRowid(tab=%d, cursor=%d): %d\n",
         pTab->iInst, pCur->iCursor, (int)pCur->iRowid);
  *pRowid = pCur->iRowid;
  return SQLITE_OK;
}
