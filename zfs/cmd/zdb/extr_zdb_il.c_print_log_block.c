
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int zl_spa; } ;
typedef TYPE_2__ zilog_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
struct TYPE_7__ {scalar_t__* zc_word; } ;
struct TYPE_9__ {scalar_t__ blk_birth; TYPE_1__ blk_cksum; } ;
typedef TYPE_3__ blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int MAX (int ,int ) ;
 size_t ZIL_ZC_SEQ ;
 int * dump_opt ;
 int printf (char*,int ,char const*,char*) ;
 int snprintf_blkptr (char*,int,TYPE_3__*) ;
 scalar_t__ spa_min_claim_txg (int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
print_log_block(zilog_t *zilog, blkptr_t *bp, void *arg, uint64_t claim_txg)
{
 char blkbuf[BP_SPRINTF_LEN + 10];
 int verbose = MAX(dump_opt['d'], dump_opt['i']);
 const char *claim;

 if (verbose <= 3)
  return (0);

 if (verbose >= 5) {
  (void) strcpy(blkbuf, ", ");
  snprintf_blkptr(blkbuf + strlen(blkbuf),
      sizeof (blkbuf) - strlen(blkbuf), bp);
 } else {
  blkbuf[0] = '\0';
 }

 if (claim_txg != 0)
  claim = "already claimed";
 else if (bp->blk_birth >= spa_min_claim_txg(zilog->zl_spa))
  claim = "will claim";
 else
  claim = "won't claim";

 (void) printf("\tBlock seqno %llu, %s%s\n",
     (u_longlong_t)bp->blk_cksum.zc_word[ZIL_ZC_SEQ], claim, blkbuf);

 return (0);
}
