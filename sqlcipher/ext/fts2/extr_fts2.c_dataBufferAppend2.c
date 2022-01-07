
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; scalar_t__ pData; } ;
typedef TYPE_1__ DataBuffer ;


 int assert (int) ;
 int dataBufferExpand (TYPE_1__*,int) ;
 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static void dataBufferAppend2(DataBuffer *pBuffer,
                              const char *pSource1, int nSource1,
                              const char *pSource2, int nSource2){
  assert( nSource1>0 && pSource1!=((void*)0) );
  assert( nSource2>0 && pSource2!=((void*)0) );
  dataBufferExpand(pBuffer, nSource1+nSource2);
  memcpy(pBuffer->pData+pBuffer->nData, pSource1, nSource1);
  memcpy(pBuffer->pData+pBuffer->nData+nSource1, pSource2, nSource2);
  pBuffer->nData += nSource1+nSource2;
}
