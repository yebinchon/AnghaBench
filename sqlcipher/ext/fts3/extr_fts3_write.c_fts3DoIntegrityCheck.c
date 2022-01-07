
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts3Table ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int fts3IntegrityCheck (int *,int*) ;

__attribute__((used)) static int fts3DoIntegrityCheck(
  Fts3Table *p
){
  int rc;
  int bOk = 0;
  rc = fts3IntegrityCheck(p, &bOk);
  if( rc==SQLITE_OK && bOk==0 ) rc = FTS_CORRUPT_VTAB;
  return rc;
}
