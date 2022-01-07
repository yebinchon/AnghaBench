
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pRename; } ;
struct TYPE_5__ {void* p; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ RenameToken ;
typedef TYPE_2__ Parse ;


 int renameTokenCheckAll (TYPE_2__*,void*) ;

void sqlite3RenameTokenRemap(Parse *pParse, void *pTo, void *pFrom){
  RenameToken *p;
  renameTokenCheckAll(pParse, pTo);
  for(p=pParse->pRename; p; p=p->pNext){
    if( p->p==pFrom ){
      p->p = pTo;
      break;
    }
  }
}
