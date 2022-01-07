
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int fulltext_vtab ;


 int TRACE (char*) ;
 int flushPendingTerms (int *) ;

__attribute__((used)) static int fulltextSync(sqlite3_vtab *pVtab){
  TRACE(("FTS2 xSync()\n"));
  return flushPendingTerms((fulltext_vtab *)pVtab);
}
