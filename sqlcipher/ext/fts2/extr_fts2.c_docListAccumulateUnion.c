
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nData; int pData; } ;
typedef TYPE_1__ DataBuffer ;


 int dataBufferDestroy (TYPE_1__*) ;
 int dataBufferInit (TYPE_1__*,scalar_t__) ;
 int docListUnion (int ,scalar_t__,char const*,int,TYPE_1__*) ;

__attribute__((used)) static void docListAccumulateUnion(DataBuffer *acc,
                                   const char *pData, int nData) {
  DataBuffer tmp = *acc;
  dataBufferInit(acc, tmp.nData+nData);
  docListUnion(tmp.pData, tmp.nData, pData, nData, acc);
  dataBufferDestroy(&tmp);
}
