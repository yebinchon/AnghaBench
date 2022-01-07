
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pData; scalar_t__ pEnv; } ;
typedef TYPE_1__ LsmBlob ;


 int assert (int) ;
 int lsmFree (scalar_t__,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void sortedBlobFree(LsmBlob *pBlob){
  assert( pBlob->pEnv || pBlob->pData==0 );
  if( pBlob->pData ) lsmFree(pBlob->pEnv, pBlob->pData);
  memset(pBlob, 0, sizeof(LsmBlob));
}
