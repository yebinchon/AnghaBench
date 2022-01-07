
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i64 ;
typedef int Fts5Buffer ;


 scalar_t__ FTS5_AVERAGES_ROWID ;
 int fts5DecodeRowid (scalar_t__,int*,int*,int*,int*) ;
 int sqlite3Fts5BufferAppendPrintf (int*,int *,char*,...) ;

__attribute__((used)) static void fts5DebugRowid(int *pRc, Fts5Buffer *pBuf, i64 iKey){
  int iSegid, iHeight, iPgno, bDlidx;
  fts5DecodeRowid(iKey, &iSegid, &bDlidx, &iHeight, &iPgno);

  if( iSegid==0 ){
    if( iKey==FTS5_AVERAGES_ROWID ){
      sqlite3Fts5BufferAppendPrintf(pRc, pBuf, "{averages} ");
    }else{
      sqlite3Fts5BufferAppendPrintf(pRc, pBuf, "{structure}");
    }
  }
  else{
    sqlite3Fts5BufferAppendPrintf(pRc, pBuf, "{%ssegid=%d h=%d pgno=%d}",
        bDlidx ? "dlidx " : "", iSegid, iHeight, iPgno
    );
  }
}
