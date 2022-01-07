
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iType; int nData; int pData; } ;
typedef int DocListReader ;
typedef TYPE_1__ DocList ;


 int assert (int) ;
 int docListSpliceElement (int *,int ,int ,int ) ;
 int firstDocid (TYPE_1__*) ;
 int readerInit (int *,TYPE_1__*) ;

__attribute__((used)) static void docListUpdate(DocList *d, DocList *pUpdate){
  DocListReader reader;

  assert( d!=((void*)0) && pUpdate!=((void*)0) );
  assert( d->iType==pUpdate->iType);

  readerInit(&reader, d);
  docListSpliceElement(&reader, firstDocid(pUpdate),
                       pUpdate->pData, pUpdate->nData);
}
