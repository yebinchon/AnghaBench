
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdb_cb_t ;
typedef int dmu_tx_t ;
typedef int blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int ZDB_OT_DEFERRED ;
 int* dump_opt ;
 int printf (char*,char*,char*) ;
 int snprintf_blkptr (char*,int,int const*) ;
 int zdb_count_block (int *,int *,int const*,int ) ;

__attribute__((used)) static int
count_block_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 zdb_cb_t *zcb = arg;

 if (dump_opt['b'] >= 5) {
  char blkbuf[BP_SPRINTF_LEN];
  snprintf_blkptr(blkbuf, sizeof (blkbuf), bp);
  (void) printf("[%s] %s\n",
      "deferred free", blkbuf);
 }
 zdb_count_block(zcb, ((void*)0), bp, ZDB_OT_DEFERRED);
 return (0);
}
