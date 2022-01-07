
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts3Hash ;


 int sqlite3Fts3HashClear (int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void hashDestroy(void *p){
  Fts3Hash *pHash = (Fts3Hash *)p;
  sqlite3Fts3HashClear(pHash);
  sqlite3_free(pHash);
}
