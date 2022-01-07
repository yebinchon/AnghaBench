
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DbPage ;


 int SQLITE_OK ;
 int memcpy (void*,void*,int) ;
 int sqlite3PagerWrite (int *) ;

__attribute__((used)) static int copyPayload(
  void *pPayload,
  void *pBuf,
  int nByte,
  int eOp,
  DbPage *pDbPage
){
  if( eOp ){

    int rc = sqlite3PagerWrite(pDbPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    memcpy(pPayload, pBuf, nByte);
  }else{

    memcpy(pBuf, pPayload, nByte);
  }
  return SQLITE_OK;
}
