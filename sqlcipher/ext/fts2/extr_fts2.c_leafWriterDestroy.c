
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int term; int parentWriter; scalar_t__ has_parent; } ;
typedef TYPE_1__ LeafWriter ;


 int dataBufferDestroy (int *) ;
 int interiorWriterDestroy (int *) ;

__attribute__((used)) static void leafWriterDestroy(LeafWriter *pWriter){
  if( pWriter->has_parent ) interiorWriterDestroy(&pWriter->parentWriter);
  dataBufferDestroy(&pWriter->term);
  dataBufferDestroy(&pWriter->data);
}
