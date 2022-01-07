
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pContext; int (* xDestructor ) (int ) ;} ;
typedef TYPE_1__ RtreeGeomCallback ;


 int sqlite3_free (void*) ;
 int stub1 (int ) ;

__attribute__((used)) static void rtreeFreeCallback(void *p){
  RtreeGeomCallback *pInfo = (RtreeGeomCallback*)p;
  if( pInfo->xDestructor ) pInfo->xDestructor(pInfo->pContext);
  sqlite3_free(p);
}
