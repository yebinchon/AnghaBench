
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int n; int bEof; int const* a; } ;
typedef TYPE_1__ Fts5PoslistReader ;


 int memset (TYPE_1__*,int ,int) ;
 int sqlite3Fts5PoslistReaderNext (TYPE_1__*) ;

int sqlite3Fts5PoslistReaderInit(
  const u8 *a, int n,
  Fts5PoslistReader *pIter
){
  memset(pIter, 0, sizeof(*pIter));
  pIter->a = a;
  pIter->n = n;
  sqlite3Fts5PoslistReaderNext(pIter);
  return pIter->bEof;
}
