
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ fulltext_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;

__attribute__((used)) static int fulltextOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  fulltext_cursor *c;

  c = (fulltext_cursor *) sqlite3_malloc(sizeof(fulltext_cursor));
  if( c ){
    memset(c, 0, sizeof(fulltext_cursor));

    *ppCursor = &c->base;
    TRACE(("FTS2 Open %p: %p\n", pVTab, c));
    return SQLITE_OK;
  }else{
    return SQLITE_NOMEM;
  }
}
