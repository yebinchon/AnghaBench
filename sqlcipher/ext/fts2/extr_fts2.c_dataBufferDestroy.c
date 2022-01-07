
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pData; } ;
typedef TYPE_1__ DataBuffer ;


 int SCRAMBLE (TYPE_1__*) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void dataBufferDestroy(DataBuffer *pBuffer){
  if( pBuffer->pData!=((void*)0) ) sqlite3_free(pBuffer->pData);
  SCRAMBLE(pBuffer);
}
