
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int term; struct TYPE_6__* parentWriter; int data; struct TYPE_6__* next; struct TYPE_6__* first; } ;
typedef TYPE_1__ InteriorWriter ;
typedef TYPE_1__ InteriorBlock ;


 int SCRAMBLE (TYPE_1__*) ;
 int SQLITE_OK ;
 int dataBufferDestroy (int *) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int interiorWriterDestroy(InteriorWriter *pWriter){
  InteriorBlock *block = pWriter->first;

  while( block!=((void*)0) ){
    InteriorBlock *b = block;
    block = block->next;
    dataBufferDestroy(&b->term);
    dataBufferDestroy(&b->data);
    sqlite3_free(b);
  }
  if( pWriter->parentWriter!=((void*)0) ){
    interiorWriterDestroy(pWriter->parentWriter);
    sqlite3_free(pWriter->parentWriter);
  }
  dataBufferDestroy(&pWriter->term);
  SCRAMBLE(pWriter);
  return SQLITE_OK;
}
