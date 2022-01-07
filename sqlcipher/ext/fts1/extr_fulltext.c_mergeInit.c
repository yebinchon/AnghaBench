
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ iType; } ;
struct TYPE_7__ {int iOffset; TYPE_2__* pOut; int in; } ;
typedef TYPE_1__ DocListMerge ;
typedef TYPE_2__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int assert (int) ;
 int readerInit (int *,TYPE_2__*) ;

__attribute__((used)) static void mergeInit(DocListMerge *m,
                      DocList *pIn, int iOffset, DocList *pOut){
  readerInit(&m->in, pIn);
  m->pOut = pOut;
  m->iOffset = iOffset;


  assert( pIn==((void*)0) || pIn->iType <= DL_POSITIONS );
  assert( pOut->iType <= DL_POSITIONS );
}
