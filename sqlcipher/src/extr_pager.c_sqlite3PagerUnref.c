
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DbPage ;


 int sqlite3PagerUnrefNotNull (int *) ;

void sqlite3PagerUnref(DbPage *pPg){
  if( pPg ) sqlite3PagerUnrefNotNull(pPg);
}
