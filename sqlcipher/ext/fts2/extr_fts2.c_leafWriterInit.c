
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iLevel; int idx; int data; int term; } ;
typedef TYPE_1__ LeafWriter ;


 int CLEAR (TYPE_1__*) ;
 int LEAF_MAX ;
 int dataBufferInit (int *,int) ;

__attribute__((used)) static void leafWriterInit(int iLevel, int idx, LeafWriter *pWriter){
  CLEAR(pWriter);
  pWriter->iLevel = iLevel;
  pWriter->idx = idx;

  dataBufferInit(&pWriter->term, 32);


  dataBufferInit(&pWriter->data, LEAF_MAX);
}
