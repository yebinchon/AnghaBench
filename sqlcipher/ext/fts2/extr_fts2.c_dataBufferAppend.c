
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

__attribute__((used)) static void dataBufferAppend(DataBuffer *pBuffer,
                             const char *pSource, int nSource){
  assert( nSource>0 && pSource!=((void*)0) );
  dataBufferExpand(pBuffer, nSource);
  memcpy(pBuffer->pData+pBuffer->nData, pSource, nSource);
  pBuffer->nData += nSource;
}
