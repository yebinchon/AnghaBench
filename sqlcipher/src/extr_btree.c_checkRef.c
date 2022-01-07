
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nPage; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ IntegrityCk ;


 int checkAppendMsg (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ getPageReferenced (TYPE_1__*,scalar_t__) ;
 int setPageReferenced (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int checkRef(IntegrityCk *pCheck, Pgno iPage){
  if( iPage>pCheck->nPage || iPage==0 ){
    checkAppendMsg(pCheck, "invalid page number %d", iPage);
    return 1;
  }
  if( getPageReferenced(pCheck, iPage) ){
    checkAppendMsg(pCheck, "2nd reference to page %d", iPage);
    return 1;
  }
  setPageReferenced(pCheck, iPage);
  return 0;
}
