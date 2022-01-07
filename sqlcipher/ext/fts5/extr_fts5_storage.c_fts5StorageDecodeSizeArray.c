
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ fts5GetVarint32 (int const*,int) ;

__attribute__((used)) static int fts5StorageDecodeSizeArray(
  int *aCol, int nCol,
  const u8 *aBlob, int nBlob
){
  int i;
  int iOff = 0;
  for(i=0; i<nCol; i++){
    if( iOff>=nBlob ) return 1;
    iOff += fts5GetVarint32(&aBlob[iOff], aCol[i]);
  }
  return (iOff!=nBlob);
}
