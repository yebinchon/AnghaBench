
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_4__ {scalar_t__ nTotalRow; } ;
typedef TYPE_1__ Fts5Storage ;


 int FTS5_CORRUPT ;
 int SQLITE_OK ;
 int fts5StorageLoadTotals (TYPE_1__*,int ) ;

int sqlite3Fts5StorageRowCount(Fts5Storage *p, i64 *pnRow){
  int rc = fts5StorageLoadTotals(p, 0);
  if( rc==SQLITE_OK ){





    *pnRow = p->nTotalRow;
    if( p->nTotalRow<=0 ) rc = FTS5_CORRUPT;
  }
  return rc;
}
