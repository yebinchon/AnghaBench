
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nCapacity; int * pData; scalar_t__ nData; } ;
typedef TYPE_1__ DataBuffer ;


 int assert (int) ;
 int * sqlite3_malloc (int) ;

__attribute__((used)) static void dataBufferInit(DataBuffer *pBuffer, int nCapacity){
  assert( nCapacity>=0 );
  pBuffer->nData = 0;
  pBuffer->nCapacity = nCapacity;
  pBuffer->pData = nCapacity==0 ? ((void*)0) : sqlite3_malloc(nCapacity);
}
