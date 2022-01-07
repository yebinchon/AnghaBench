
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pFiles; } ;
typedef TYPE_1__ quotaGroup ;
struct TYPE_5__ {scalar_t__ nRef; } ;


 int assert (int) ;
 int quotaRemoveFile (TYPE_2__*) ;

__attribute__((used)) static void quotaRemoveAllFiles(quotaGroup *pGroup){
  while( pGroup->pFiles ){
    assert( pGroup->pFiles->nRef==0 );
    quotaRemoveFile(pGroup->pFiles);
  }
}
