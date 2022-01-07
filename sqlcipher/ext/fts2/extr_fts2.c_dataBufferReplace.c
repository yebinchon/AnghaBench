
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DataBuffer ;


 int dataBufferAppend (int *,char const*,int) ;
 int dataBufferReset (int *) ;

__attribute__((used)) static void dataBufferReplace(DataBuffer *pBuffer,
                              const char *pSource, int nSource){
  dataBufferReset(pBuffer);
  dataBufferAppend(pBuffer, pSource, nSource);
}
