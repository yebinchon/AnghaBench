
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DataBuffer ;
typedef int DLWriter ;
typedef int DLReader ;


 int DL_DOCIDS ;
 int dataBufferAppend (int *,char const*,int) ;
 scalar_t__ dlrAtEnd (int *) ;
 int dlrDestroy (int *) ;
 scalar_t__ dlrDocid (int *) ;
 int dlrInit (int *,int ,char const*,int) ;
 int dlrStep (int *) ;
 int dlwAdd (int *,scalar_t__) ;
 int dlwDestroy (int *) ;
 int dlwInit (int *,int ,int *) ;

__attribute__((used)) static void docListOrMerge(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DataBuffer *pOut
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 ){
    if( nRight!=0 ) dataBufferAppend(pOut, pRight, nRight);
    return;
  }
  if( nRight==0 ){
    dataBufferAppend(pOut, pLeft, nLeft);
    return;
  }

  dlrInit(&left, DL_DOCIDS, pLeft, nLeft);
  dlrInit(&right, DL_DOCIDS, pRight, nRight);
  dlwInit(&writer, DL_DOCIDS, pOut);

  while( !dlrAtEnd(&left) || !dlrAtEnd(&right) ){
    if( dlrAtEnd(&right) ){
      dlwAdd(&writer, dlrDocid(&left));
      dlrStep(&left);
    }else if( dlrAtEnd(&left) ){
      dlwAdd(&writer, dlrDocid(&right));
      dlrStep(&right);
    }else if( dlrDocid(&left)<dlrDocid(&right) ){
      dlwAdd(&writer, dlrDocid(&left));
      dlrStep(&left);
    }else if( dlrDocid(&right)<dlrDocid(&left) ){
      dlwAdd(&writer, dlrDocid(&right));
      dlrStep(&right);
    }else{
      dlwAdd(&writer, dlrDocid(&left));
      dlrStep(&left);
      dlrStep(&right);
    }
  }

  dlrDestroy(&left);
  dlrDestroy(&right);
  dlwDestroy(&writer);
}
