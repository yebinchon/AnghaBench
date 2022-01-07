
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_5__ {TYPE_2__* pCsrList; scalar_t__ iNextCsrid; } ;
typedef TYPE_1__ ZipfileTab ;
struct TYPE_6__ {struct TYPE_6__* pCsrNext; scalar_t__ iId; } ;
typedef TYPE_2__ ZipfileCsr ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* sqlite3_malloc (int) ;

__attribute__((used)) static int zipfileOpen(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCsr){
  ZipfileTab *pTab = (ZipfileTab*)p;
  ZipfileCsr *pCsr;
  pCsr = sqlite3_malloc(sizeof(*pCsr));
  *ppCsr = (sqlite3_vtab_cursor*)pCsr;
  if( pCsr==0 ){
    return SQLITE_NOMEM;
  }
  memset(pCsr, 0, sizeof(*pCsr));
  pCsr->iId = ++pTab->iNextCsrid;
  pCsr->pCsrNext = pTab->pCsrList;
  pTab->pCsrList = pCsr;
  return SQLITE_OK;
}
