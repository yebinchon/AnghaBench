
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf ;
struct TYPE_9__ {int p; int n; } ;
struct TYPE_8__ {int pIndex; int * aTotalSize; int nTotalRow; TYPE_1__* pConfig; } ;
struct TYPE_7__ {int nCol; } ;
typedef TYPE_2__ Fts5Storage ;
typedef TYPE_3__ Fts5Buffer ;


 int SQLITE_OK ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3Fts5BufferAppendVarint (int*,TYPE_3__*,int ) ;
 int sqlite3Fts5IndexSetAverages (int ,int ,int ) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int fts5StorageSaveTotals(Fts5Storage *p){
  int nCol = p->pConfig->nCol;
  int i;
  Fts5Buffer buf;
  int rc = SQLITE_OK;
  memset(&buf, 0, sizeof(buf));

  sqlite3Fts5BufferAppendVarint(&rc, &buf, p->nTotalRow);
  for(i=0; i<nCol; i++){
    sqlite3Fts5BufferAppendVarint(&rc, &buf, p->aTotalSize[i]);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5IndexSetAverages(p->pIndex, buf.p, buf.n);
  }
  sqlite3_free(buf.p);

  return rc;
}
