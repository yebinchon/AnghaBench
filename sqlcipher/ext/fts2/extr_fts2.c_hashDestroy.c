
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fts2Hash ;


 int sqlite3Fts2HashClear (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void hashDestroy(void *p){
  fts2Hash *pHash = (fts2Hash *)p;
  sqlite3Fts2HashClear(pHash);
  sqlite3_free(pHash);
}
