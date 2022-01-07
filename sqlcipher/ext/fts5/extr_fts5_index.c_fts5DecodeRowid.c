
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;


 int FTS5_DATA_DLI_B ;
 int FTS5_DATA_HEIGHT_B ;
 int FTS5_DATA_ID_B ;
 int FTS5_DATA_PAGE_B ;

__attribute__((used)) static void fts5DecodeRowid(
  i64 iRowid,
  int *piSegid,
  int *pbDlidx,
  int *piHeight,
  int *piPgno
){
  *piPgno = (int)(iRowid & (((i64)1 << FTS5_DATA_PAGE_B) - 1));
  iRowid >>= FTS5_DATA_PAGE_B;

  *piHeight = (int)(iRowid & (((i64)1 << FTS5_DATA_HEIGHT_B) - 1));
  iRowid >>= FTS5_DATA_HEIGHT_B;

  *pbDlidx = (int)(iRowid & 0x0001);
  iRowid >>= FTS5_DATA_DLI_B;

  *piSegid = (int)(iRowid & (((i64)1 << FTS5_DATA_ID_B) - 1));
}
