
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Data ;


 int sqlite3_free (int *) ;

__attribute__((used)) static void fts5DataRelease(Fts5Data *pData){
  sqlite3_free(pData);
}
