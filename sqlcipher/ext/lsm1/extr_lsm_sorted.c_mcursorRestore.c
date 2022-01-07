
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pClient; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_8__ {int nData; scalar_t__ pData; } ;
struct TYPE_10__ {TYPE_1__ key; int eType; } ;
typedef TYPE_3__ MultiCursor ;


 int LSM_OK ;
 int lsmMCursorSeek (TYPE_3__*,int ,scalar_t__,int ,int) ;
 int multiCursorInit (TYPE_3__*,int ) ;
 int rtTopic (int ) ;

int mcursorRestore(lsm_db *pDb, MultiCursor *pCsr){
  int rc;
  rc = multiCursorInit(pCsr, pDb->pClient);
  if( rc==LSM_OK && pCsr->key.pData ){
    rc = lsmMCursorSeek(pCsr,
         rtTopic(pCsr->eType), pCsr->key.pData, pCsr->key.nData, +1
    );
  }
  return rc;
}
