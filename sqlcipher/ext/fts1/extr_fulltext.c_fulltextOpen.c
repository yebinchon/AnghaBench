
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_2__ {int base; } ;
typedef TYPE_1__ fulltext_cursor ;


 int SQLITE_OK ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static int fulltextOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  fulltext_cursor *c;

  c = (fulltext_cursor *) calloc(sizeof(fulltext_cursor), 1);

  *ppCursor = &c->base;

  return SQLITE_OK;
}
