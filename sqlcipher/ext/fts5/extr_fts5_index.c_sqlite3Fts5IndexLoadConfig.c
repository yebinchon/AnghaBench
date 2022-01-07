
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Structure ;
typedef int Fts5Index ;


 int fts5IndexReturn (int *) ;
 int * fts5StructureRead (int *) ;
 int fts5StructureRelease (int *) ;

int sqlite3Fts5IndexLoadConfig(Fts5Index *p){
  Fts5Structure *pStruct;
  pStruct = fts5StructureRead(p);
  fts5StructureRelease(pStruct);
  return fts5IndexReturn(p);
}
