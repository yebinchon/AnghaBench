
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zVal ;
struct TYPE_5__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
struct TYPE_6__ {int iCursor; int iRowid; } ;
typedef TYPE_2__ vtablog_cursor ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int printf (char*,int,int,int,char*) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,int,int ) ;

__attribute__((used)) static int vtablogColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  vtablog_cursor *pCur = (vtablog_cursor*)cur;
  vtablog_vtab *pTab = (vtablog_vtab*)cur->pVtab;
  char zVal[50];

  if( i<26 ){
    sqlite3_snprintf(sizeof(zVal),zVal,"%c%d",
                     "abcdefghijklmnopqrstuvwyz"[i], pCur->iRowid);
  }else{
    sqlite3_snprintf(sizeof(zVal),zVal,"{%d}%d", i, pCur->iRowid);
  }
  printf("vtablogColumn(tab=%d, cursor=%d, i=%d): [%s]\n",
         pTab->iInst, pCur->iCursor, i, zVal);
  sqlite3_result_text(ctx, zVal, -1, SQLITE_TRANSIENT);
  return SQLITE_OK;
}
