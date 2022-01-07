
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_7__ {scalar_t__* azVal; } ;
struct TYPE_6__ {int nCol; } ;
typedef TYPE_2__ CsvTable ;
typedef TYPE_3__ CsvCursor ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sqlite3_result_text (int *,scalar_t__,int,int ) ;

__attribute__((used)) static int csvtabColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  CsvCursor *pCur = (CsvCursor*)cur;
  CsvTable *pTab = (CsvTable*)cur->pVtab;
  if( i>=0 && i<pTab->nCol && pCur->azVal[i]!=0 ){
    sqlite3_result_text(ctx, pCur->azVal[i], -1, SQLITE_STATIC);
  }
  return SQLITE_OK;
}
