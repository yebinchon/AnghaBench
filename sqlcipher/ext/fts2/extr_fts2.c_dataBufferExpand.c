
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nData; scalar_t__ nCapacity; int pData; } ;
typedef TYPE_1__ DataBuffer ;


 int assert (int) ;
 int sqlite3_realloc (int ,scalar_t__) ;

__attribute__((used)) static void dataBufferExpand(DataBuffer *pBuffer, int nAddCapacity){
  assert( nAddCapacity>0 );




  if( pBuffer->nData+nAddCapacity>pBuffer->nCapacity ){
    pBuffer->nCapacity = pBuffer->nData+nAddCapacity;
    pBuffer->pData = sqlite3_realloc(pBuffer->pData, pBuffer->nCapacity);
  }
}
