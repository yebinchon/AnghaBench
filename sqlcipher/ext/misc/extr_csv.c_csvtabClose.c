
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {int rdr; } ;
typedef TYPE_1__ CsvCursor ;


 int SQLITE_OK ;
 int csv_reader_reset (int *) ;
 int csvtabCursorRowReset (TYPE_1__*) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int csvtabClose(sqlite3_vtab_cursor *cur){
  CsvCursor *pCur = (CsvCursor*)cur;
  csvtabCursorRowReset(pCur);
  csv_reader_reset(&pCur->rdr);
  sqlite3_free(cur);
  return SQLITE_OK;
}
