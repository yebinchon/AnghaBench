
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int i64 ;
typedef int Fts5Buffer ;


 int sqlite3Fts5BufferAppendPrintf (int*,int *,char*,int ,char const*) ;
 scalar_t__ sqlite3Fts5GetVarint (int const*,scalar_t__*) ;

__attribute__((used)) static void fts5DecodeRowidList(
  int *pRc,
  Fts5Buffer *pBuf,
  const u8 *pData, int nData
){
  int i = 0;
  i64 iRowid = 0;

  while( i<nData ){
    const char *zApp = "";
    u64 iVal;
    i += sqlite3Fts5GetVarint(&pData[i], &iVal);
    iRowid += iVal;

    if( i<nData && pData[i]==0x00 ){
      i++;
      if( i<nData && pData[i]==0x00 ){
        i++;
        zApp = "+";
      }else{
        zApp = "*";
      }
    }

    sqlite3Fts5BufferAppendPrintf(pRc, pBuf, " %lld%s", iRowid, zApp);
  }
}
