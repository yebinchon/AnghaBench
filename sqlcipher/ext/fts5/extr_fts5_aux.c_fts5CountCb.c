
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int Fts5ExtensionApi ;
typedef int Fts5Context ;


 int SQLITE_OK ;
 int UNUSED_PARAM2 (int const*,int *) ;

__attribute__((used)) static int fts5CountCb(
  const Fts5ExtensionApi *pApi,
  Fts5Context *pFts,
  void *pUserData
){
  sqlite3_int64 *pn = (sqlite3_int64*)pUserData;
  UNUSED_PARAM2(pApi, pFts);
  (*pn)++;
  return SQLITE_OK;
}
