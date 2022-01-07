
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int* aMatchinfo; int nElem; scalar_t__* aRef; } ;
typedef TYPE_1__ MatchinfoBuffer ;


 int assert (int) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void fts3MIBufferFree(void *p){
  MatchinfoBuffer *pBuf = (MatchinfoBuffer*)((u8*)p - ((u32*)p)[-1]);

  assert( (u32*)p==&pBuf->aMatchinfo[1]
       || (u32*)p==&pBuf->aMatchinfo[pBuf->nElem+2]
  );
  if( (u32*)p==&pBuf->aMatchinfo[1] ){
    pBuf->aRef[1] = 0;
  }else{
    pBuf->aRef[2] = 0;
  }

  if( pBuf->aRef[0]==0 && pBuf->aRef[1]==0 && pBuf->aRef[2]==0 ){
    sqlite3_free(pBuf);
  }
}
