
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LsmPgno ;
typedef int FileSystem ;


 int fsPageToBlock (int *,scalar_t__) ;

__attribute__((used)) static LsmPgno firstOnBlock(
  FileSystem *pFS,
  int iBlk,
  LsmPgno *aPgno,
  int nPgno
){
  LsmPgno iRet = 0;
  int i;
  for(i=0; i<nPgno; i++){
    LsmPgno iPg = aPgno[i];
    if( fsPageToBlock(pFS, iPg)==iBlk && (iRet==0 || iPg<iRet) ){
      iRet = iPg;
    }
  }
  return iRet;
}
