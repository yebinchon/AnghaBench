
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Index ;


 int SQLITE_OK ;
 int fts5CloseReader (int *) ;
 int fts5IndexDiscardData (int *) ;
 int fts5StructureInvalidate (int *) ;

int sqlite3Fts5IndexRollback(Fts5Index *p){
  fts5CloseReader(p);
  fts5IndexDiscardData(p);
  fts5StructureInvalidate(p);

  return SQLITE_OK;
}
