
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Fts5Structure ;
typedef int Fts5Index ;


 int FTS5_AVERAGES_ROWID ;
 int fts5DataWrite (int *,int ,int const*,int ) ;
 int fts5IndexReturn (int *) ;
 int fts5StructureInvalidate (int *) ;
 int fts5StructureWrite (int *,int *) ;
 int memset (int *,int ,int) ;

int sqlite3Fts5IndexReinit(Fts5Index *p){
  Fts5Structure s;
  fts5StructureInvalidate(p);
  memset(&s, 0, sizeof(Fts5Structure));
  fts5DataWrite(p, FTS5_AVERAGES_ROWID, (const u8*)"", 0);
  fts5StructureWrite(p, &s);
  return fts5IndexReturn(p);
}
