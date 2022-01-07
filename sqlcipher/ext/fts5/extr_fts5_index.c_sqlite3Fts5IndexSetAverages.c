
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ rc; } ;
typedef TYPE_1__ Fts5Index ;


 int FTS5_AVERAGES_ROWID ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5DataWrite (TYPE_1__*,int ,int const*,int) ;
 int fts5IndexReturn (TYPE_1__*) ;

int sqlite3Fts5IndexSetAverages(Fts5Index *p, const u8 *pData, int nData){
  assert( p->rc==SQLITE_OK );
  fts5DataWrite(p, FTS5_AVERAGES_ROWID, pData, nData);
  return fts5IndexReturn(p);
}
