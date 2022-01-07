
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int LogReader ;


 int logReaderBlob (int *,int ,int,int **,int*) ;

__attribute__((used)) static void logReaderByte(LogReader *p, u8 *pByte, int *pRc){
  u8 *pPtr = 0;
  logReaderBlob(p, 0, 1, &pPtr, pRc);
  if( pPtr ) *pByte = *pPtr;
}
