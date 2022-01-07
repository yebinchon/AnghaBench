
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_int64 ;
struct TYPE_5__ {int* aMatchinfo; int nElem; char* zMatchinfo; int* aRef; } ;
typedef TYPE_1__ MatchinfoBuffer ;


 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3_malloc64 (int) ;
 int strlen (char const*) ;

__attribute__((used)) static MatchinfoBuffer *fts3MIBufferNew(size_t nElem, const char *zMatchinfo){
  MatchinfoBuffer *pRet;
  sqlite3_int64 nByte = sizeof(u32) * (2*(sqlite3_int64)nElem + 1)
                           + sizeof(MatchinfoBuffer);
  sqlite3_int64 nStr = strlen(zMatchinfo);

  pRet = sqlite3_malloc64(nByte + nStr+1);
  if( pRet ){
    memset(pRet, 0, nByte);
    pRet->aMatchinfo[0] = (u8*)(&pRet->aMatchinfo[1]) - (u8*)pRet;
    pRet->aMatchinfo[1+nElem] = pRet->aMatchinfo[0]
                                      + sizeof(u32)*((int)nElem+1);
    pRet->nElem = (int)nElem;
    pRet->zMatchinfo = ((char*)pRet) + nByte;
    memcpy(pRet->zMatchinfo, zMatchinfo, nStr+1);
    pRet->aRef[0] = 1;
  }

  return pRet;
}
