
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bt_db ;
struct TYPE_9__ {scalar_t__ p; } ;
struct TYPE_8__ {scalar_t__ p; } ;
struct TYPE_10__ {scalar_t__ nRef; int nLogsize; scalar_t__ bDoWork; int ckpter_mutex; int ckpter_cond; TYPE_2__ spec; TYPE_1__ file; } ;
typedef TYPE_3__ bt_ckpter ;
struct TYPE_11__ {int nFrameBuffer; } ;
typedef TYPE_4__ bt_checkpoint ;
typedef int TestDb ;
struct TYPE_12__ {int * pBt; } ;
typedef TYPE_5__ BtDb ;


 int BT_CONTROL_CHECKPOINT ;
 int BT_CONTROL_LOGSIZE ;
 int SQLITE4_OK ;
 int assert (int) ;
 int bt_close (int *) ;
 int memset (TYPE_4__*,int ,int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite4BtBegin (int *,int) ;
 int sqlite4BtCommit (int *,int ) ;
 int sqlite4BtControl (int *,int ,void*) ;
 int testBtConfigure (TYPE_5__*,char*,int*) ;
 int test_bt_open (char*,char*,int ,int **) ;

__attribute__((used)) static void *bgc_main(void *pArg){
  BtDb *pDb = 0;
  int rc;
  int mt;
  bt_ckpter *pCkpter = (bt_ckpter*)pArg;

  rc = test_bt_open("", (char*)pCkpter->file.p, 0, (TestDb**)&pDb);
  assert( rc==SQLITE4_OK );
  rc = testBtConfigure(pDb, (char*)pCkpter->spec.p, &mt);

  while( pCkpter->nRef>0 ){
    bt_db *db = pDb->pBt;
    int nLog = 0;

    sqlite4BtBegin(db, 1);
    sqlite4BtCommit(db, 0);
    sqlite4BtControl(db, BT_CONTROL_LOGSIZE, (void*)&nLog);

    if( nLog>=pCkpter->nLogsize ){
      int rc;
      bt_checkpoint ckpt;
      memset(&ckpt, 0, sizeof(bt_checkpoint));
      ckpt.nFrameBuffer = nLog/2;
      rc = sqlite4BtControl(db, BT_CONTROL_CHECKPOINT, (void*)&ckpt);
      assert( rc==SQLITE4_OK );
      sqlite4BtControl(db, BT_CONTROL_LOGSIZE, (void*)&nLog);
    }




    pthread_mutex_lock(&pCkpter->ckpter_mutex);
    if( pCkpter->bDoWork==0 ){
      pthread_cond_wait(&pCkpter->ckpter_cond, &pCkpter->ckpter_mutex);
    }
    pCkpter->bDoWork = 0;
    pthread_mutex_unlock(&pCkpter->ckpter_mutex);
  }

  if( pDb ) bt_close((TestDb*)pDb);
  return 0;
}
