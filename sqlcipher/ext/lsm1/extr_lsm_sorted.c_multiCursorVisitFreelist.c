
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pDb; int pSystemVal; int flags; } ;
struct TYPE_4__ {int pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_FLUSH_FREELIST ;
 int LSM_OK ;
 int lsmMallocRc (int ,int,int*) ;

__attribute__((used)) static int multiCursorVisitFreelist(MultiCursor *pCsr){
  int rc = LSM_OK;
  pCsr->flags |= CURSOR_FLUSH_FREELIST;
  pCsr->pSystemVal = lsmMallocRc(pCsr->pDb->pEnv, 4 + 8, &rc);
  return rc;
}
