
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DbPage ;


 int sqlite3PcacheRef (int *) ;

void sqlite3PagerRef(DbPage *pPg){
  sqlite3PcacheRef(pPg);
}
