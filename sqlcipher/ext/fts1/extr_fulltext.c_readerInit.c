
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pData; } ;
struct TYPE_5__ {scalar_t__ iLastPos; int p; TYPE_2__* pDoclist; } ;
typedef TYPE_1__ DocListReader ;
typedef TYPE_2__ DocList ;



__attribute__((used)) static void readerInit(DocListReader *r, DocList *pDoclist){
  r->pDoclist = pDoclist;
  if( pDoclist!=((void*)0) ){
    r->p = pDoclist->pData;
  }
  r->iLastPos = 0;
}
