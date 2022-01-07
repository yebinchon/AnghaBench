
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {struct TYPE_3__* zData; struct TYPE_3__* zFilename; } ;
typedef TYPE_1__ CsvTable ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int csvtabDisconnect(sqlite3_vtab *pVtab){
  CsvTable *p = (CsvTable*)pVtab;
  sqlite3_free(p->zFilename);
  sqlite3_free(p->zData);
  sqlite3_free(p);
  return SQLITE_OK;
}
