
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DocListType ;
typedef int DataBuffer ;
typedef int DLWriter ;
typedef int DLReader ;


 int DL_POSITIONS ;
 int DL_POSITIONS_OFFSETS ;
 int assert (int) ;
 int dlrAtEnd (int *) ;
 int dlrDestroy (int *) ;
 scalar_t__ dlrDocid (int *) ;
 int dlrInit (int *,int ,char const*,int) ;
 int dlrStep (int *) ;
 int dlwDestroy (int *) ;
 int dlwInit (int *,int ,int *) ;
 int posListPhraseMerge (int *,int *,int *) ;

__attribute__((used)) static void docListPhraseMerge(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DocListType iType,
  DataBuffer *pOut
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 || nRight==0 ) return;

  assert( iType!=DL_POSITIONS_OFFSETS );

  dlrInit(&left, DL_POSITIONS, pLeft, nLeft);
  dlrInit(&right, DL_POSITIONS, pRight, nRight);
  dlwInit(&writer, iType, pOut);

  while( !dlrAtEnd(&left) && !dlrAtEnd(&right) ){
    if( dlrDocid(&left)<dlrDocid(&right) ){
      dlrStep(&left);
    }else if( dlrDocid(&right)<dlrDocid(&left) ){
      dlrStep(&right);
    }else{
      posListPhraseMerge(&left, &right, &writer);
      dlrStep(&left);
      dlrStep(&right);
    }
  }

  dlrDestroy(&left);
  dlrDestroy(&right);
  dlwDestroy(&writer);
}
