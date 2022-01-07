
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DataBuffer ;
typedef int DLWriter ;
typedef int DLReader ;


 int DL_DEFAULT ;
 int dataBufferAppend (int *,char const*,int) ;
 scalar_t__ dlrAtEnd (int *) ;
 int dlrDestroy (int *) ;
 scalar_t__ dlrDocid (int *) ;
 int dlrInit (int *,int ,char const*,int) ;
 int dlrStep (int *) ;
 int dlwCopy (int *,int *) ;
 int dlwDestroy (int *) ;
 int dlwInit (int *,int ,int *) ;
 int posListUnion (int *,int *,int *) ;

__attribute__((used)) static void docListUnion(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DataBuffer *pOut
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 ){
    if( nRight!=0) dataBufferAppend(pOut, pRight, nRight);
    return;
  }
  if( nRight==0 ){
    dataBufferAppend(pOut, pLeft, nLeft);
    return;
  }

  dlrInit(&left, DL_DEFAULT, pLeft, nLeft);
  dlrInit(&right, DL_DEFAULT, pRight, nRight);
  dlwInit(&writer, DL_DEFAULT, pOut);

  while( !dlrAtEnd(&left) || !dlrAtEnd(&right) ){
    if( dlrAtEnd(&right) ){
      dlwCopy(&writer, &left);
      dlrStep(&left);
    }else if( dlrAtEnd(&left) ){
      dlwCopy(&writer, &right);
      dlrStep(&right);
    }else if( dlrDocid(&left)<dlrDocid(&right) ){
      dlwCopy(&writer, &left);
      dlrStep(&left);
    }else if( dlrDocid(&left)>dlrDocid(&right) ){
      dlwCopy(&writer, &right);
      dlrStep(&right);
    }else{
      posListUnion(&left, &right, &writer);
      dlrStep(&left);
      dlrStep(&right);
    }
  }

  dlrDestroy(&left);
  dlrDestroy(&right);
  dlwDestroy(&writer);
}
