
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_4__ {int base; } ;
typedef TYPE_1__ VfslogCsr ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static int vlogOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  VfslogCsr *pCsr;

  pCsr = sqlite3_malloc(sizeof(VfslogCsr));
  if( !pCsr ) return SQLITE_NOMEM;
  memset(pCsr, 0, sizeof(VfslogCsr));
  *ppCursor = &pCsr->base;
  return SQLITE_OK;
}
