
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Termset ;


 int SQLITE_OK ;
 int * sqlite3Fts5MallocZero (int*,int) ;

int sqlite3Fts5TermsetNew(Fts5Termset **pp){
  int rc = SQLITE_OK;
  *pp = sqlite3Fts5MallocZero(&rc, sizeof(Fts5Termset));
  return rc;
}
