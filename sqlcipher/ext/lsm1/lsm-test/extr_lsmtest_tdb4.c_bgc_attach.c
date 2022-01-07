
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int sqlite4_buffer ;
struct TYPE_14__ {int xLogsize; void* pCtx; } ;
typedef TYPE_1__ bt_logsizecb ;
struct TYPE_18__ {int n; scalar_t__ p; } ;
struct TYPE_15__ {TYPE_6__ output; scalar_t__ pgno; int eType; } ;
typedef TYPE_2__ bt_info ;
struct TYPE_19__ {int n; int p; } ;
struct TYPE_16__ {int nLogsize; int nRef; int ckpter_thread; int ckpter_mutex; int ckpter_cond; TYPE_6__ spec; struct TYPE_16__* pNext; TYPE_9__ file; } ;
typedef TYPE_3__ bt_ckpter ;
struct TYPE_17__ {int pEnv; TYPE_3__* pCkpter; int pBt; } ;
struct TYPE_13__ {TYPE_3__* pCkpter; } ;
typedef TYPE_4__ BtDb ;


 int BT_CONTROL_INFO ;
 int BT_CONTROL_LOGSIZECB ;
 int BT_INFO_FILENAME ;
 int SQLITE4_MUTEX_STATIC_KV ;
 int SQLITE4_OK ;
 int assert (int) ;
 int bgc_logsize_cb ;
 int bgc_main ;
 TYPE_11__ gBgc ;
 scalar_t__ memcmp (scalar_t__,int ,int) ;
 int memcpy (TYPE_9__*,TYPE_6__*,int) ;
 int pthread_cond_init (int *,int ) ;
 int pthread_create (int *,int ,int ,void*) ;
 int pthread_mutex_init (int *,int ) ;
 int sqlite4BtControl (int ,int ,void*) ;
 int sqlite4_buffer_clear (TYPE_6__*) ;
 int sqlite4_buffer_init (TYPE_6__*,int ) ;
 int sqlite4_buffer_set (TYPE_6__*,char const*,scalar_t__) ;
 int sqlite4_mutex_alloc (int ,int ) ;
 int sqlite4_mutex_enter (int ) ;
 int sqlite4_mutex_leave (int ) ;
 scalar_t__ strlen (char const*) ;
 TYPE_3__* testMalloc (int) ;

__attribute__((used)) static int bgc_attach(BtDb *pDb, const char *zSpec){
  int rc;
  int n;
  bt_info info;
  bt_ckpter *pCkpter;


  info.eType = BT_INFO_FILENAME;
  info.pgno = 0;
  sqlite4_buffer_init(&info.output, 0);
  rc = sqlite4BtControl(pDb->pBt, BT_CONTROL_INFO, (void*)&info);
  if( rc!=SQLITE4_OK ) return rc;

  sqlite4_mutex_enter(sqlite4_mutex_alloc(pDb->pEnv, SQLITE4_MUTEX_STATIC_KV));


  n = info.output.n;
  for(pCkpter=gBgc.pCkpter; pCkpter; pCkpter=pCkpter->pNext){
    if( n==pCkpter->file.n && 0==memcmp(info.output.p, pCkpter->file.p, n) ){
      break;
    }
  }


  if( pCkpter==0 ){
    bt_logsizecb cb;

    pCkpter = testMalloc(sizeof(bt_ckpter));
    memcpy(&pCkpter->file, &info.output, sizeof(sqlite4_buffer));
    info.output.p = 0;
    pCkpter->pNext = gBgc.pCkpter;
    pCkpter->nLogsize = 1000;
    gBgc.pCkpter = pCkpter;
    pCkpter->nRef = 1;

    sqlite4_buffer_init(&pCkpter->spec, 0);
    rc = sqlite4_buffer_set(&pCkpter->spec, zSpec, strlen(zSpec)+1);
    assert( rc==SQLITE4_OK );


    if( rc==0 ) rc = pthread_cond_init(&pCkpter->ckpter_cond, 0);
    if( rc==0 ) rc = pthread_mutex_init(&pCkpter->ckpter_mutex, 0);
    if( rc==0 ){
      rc = pthread_create(&pCkpter->ckpter_thread, 0, bgc_main, (void*)pCkpter);
    }
    assert( rc==0 );


    cb.pCtx = (void*)pCkpter;
    cb.xLogsize = bgc_logsize_cb;
    sqlite4BtControl(pDb->pBt, BT_CONTROL_LOGSIZECB, (void*)&cb);
  }else{
    pCkpter->nRef++;
  }



  if( pCkpter ){
    pDb->pCkpter = pCkpter;
  }

  sqlite4_mutex_leave(sqlite4_mutex_alloc(pDb->pEnv, SQLITE4_MUTEX_STATIC_KV));
  sqlite4_buffer_clear(&info.output);
  return rc;
}
