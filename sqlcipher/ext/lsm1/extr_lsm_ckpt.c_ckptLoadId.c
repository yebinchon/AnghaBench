
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int i64 ;
typedef int MetaPage ;


 int CKPT_HDR_ID_LSW ;
 int CKPT_HDR_ID_MSW ;
 int * lsmFsMetaPageData (int *,int*) ;
 scalar_t__ lsmGetU32 (int *) ;

__attribute__((used)) static i64 ckptLoadId(MetaPage *pPg){
  i64 ret = 0;
  if( pPg ){
    int nData;
    u8 *aData = lsmFsMetaPageData(pPg, &nData);
    ret = (((i64)lsmGetU32(&aData[CKPT_HDR_ID_MSW*4])) << 32) +
          ((i64)lsmGetU32(&aData[CKPT_HDR_ID_LSW*4]));
  }
  return ret;
}
