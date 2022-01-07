
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DataBuffer ;



__attribute__((used)) static void dataBufferSwap(DataBuffer *pBuffer1, DataBuffer *pBuffer2){
  DataBuffer tmp = *pBuffer1;
  *pBuffer1 = *pBuffer2;
  *pBuffer2 = tmp;
}
