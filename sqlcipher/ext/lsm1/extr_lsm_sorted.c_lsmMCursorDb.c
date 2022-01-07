
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_3__ {int * pDb; } ;
typedef TYPE_1__ MultiCursor ;



lsm_db *lsmMCursorDb(MultiCursor *pCsr){
  return pCsr->pDb;
}
