
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts3MultiSegReader ;


 int sqlite3Fts3SegReaderFinish (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void fts3SegReaderCursorFree(Fts3MultiSegReader *pSegcsr){
  sqlite3Fts3SegReaderFinish(pSegcsr);
  sqlite3_free(pSegcsr);
}
