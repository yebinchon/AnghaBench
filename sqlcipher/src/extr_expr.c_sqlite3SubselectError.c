
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Parse ;


 int sqlite3ErrorMsg (int *,char const*,int,int) ;

void sqlite3SubselectError(Parse *pParse, int nActual, int nExpect){
  const char *zFmt = "sub-select returns %d columns - expected %d";
  sqlite3ErrorMsg(pParse, zFmt, nActual, nExpect);
}
