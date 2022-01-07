
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_3__ {scalar_t__ iType; scalar_t__ iPrevDocid; int b; } ;
typedef TYPE_1__ DLWriter ;


 int ASSERT_VALID_DOCLIST (scalar_t__,char const*,int,scalar_t__*) ;
 scalar_t__ DL_DOCIDS ;
 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend (int ,char*,int) ;
 int dataBufferAppend2 (int ,char*,int,char const*,int) ;
 int getVarint (char const*,scalar_t__*) ;
 int putVarint (char*,scalar_t__) ;

__attribute__((used)) static void dlwAppend(DLWriter *pWriter,
                      const char *pData, int nData,
                      sqlite_int64 iFirstDocid, sqlite_int64 iLastDocid){
  sqlite_int64 iDocid = 0;
  char c[VARINT_MAX];
  int nFirstOld, nFirstNew;

  sqlite_int64 iLastDocidDelta;



  nFirstOld = getVarint(pData, &iDocid);
  assert( nFirstOld<nData || (nFirstOld==nData && pWriter->iType==DL_DOCIDS) );
  nFirstNew = putVarint(c, iFirstDocid-pWriter->iPrevDocid);





  ASSERT_VALID_DOCLIST(pWriter->iType, pData, nData, &iLastDocidDelta);
  assert( iLastDocid==iFirstDocid-iDocid+iLastDocidDelta );




  if( nFirstOld<nData ){
    dataBufferAppend2(pWriter->b, c, nFirstNew,
                      pData+nFirstOld, nData-nFirstOld);
  }else{
    dataBufferAppend(pWriter->b, c, nFirstNew);
  }
  pWriter->iPrevDocid = iLastDocid;
}
