
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * aTree; } ;
typedef TYPE_1__ MultiCursor ;


 int LSM_OK ;
 int assert (int *) ;
 int multiCursorGetKey (TYPE_1__*,int ,int*,int ,int ) ;

int lsmMCursorType(MultiCursor *pCsr, int *peType){
  assert( pCsr->aTree );
  multiCursorGetKey(pCsr, pCsr->aTree[1], peType, 0, 0);
  return LSM_OK;
}
