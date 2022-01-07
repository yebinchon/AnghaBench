
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_longlong_t ;
typedef int dva_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ blk_birth; int * blk_dva; } ;
typedef TYPE_1__ blkptr_t ;


 scalar_t__ BPE_GET_ETYPE (TYPE_1__ const*) ;
 scalar_t__ BPE_GET_LSIZE (TYPE_1__ const*) ;
 scalar_t__ BPE_GET_PSIZE (TYPE_1__ const*) ;
 scalar_t__ BP_GET_FILL (TYPE_1__ const*) ;
 scalar_t__ BP_GET_LSIZE (TYPE_1__ const*) ;
 int BP_GET_NDVAS (TYPE_1__ const*) ;
 scalar_t__ BP_GET_PSIZE (TYPE_1__ const*) ;
 scalar_t__ BP_IS_EMBEDDED (TYPE_1__ const*) ;
 scalar_t__ BP_IS_HOLE (TYPE_1__ const*) ;
 scalar_t__ BP_PHYSICAL_BIRTH (TYPE_1__ const*) ;
 scalar_t__ DVA_GET_ASIZE (int const*) ;
 scalar_t__ DVA_GET_OFFSET (int const*) ;
 scalar_t__ DVA_GET_VDEV (int const*) ;
 int* dump_opt ;
 int snprintf (char*,int,char*,char*,...) ;
 int snprintf_blkptr (char*,size_t,TYPE_1__ const*) ;
 int sprintf (char*,char*,int,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
snprintf_blkptr_compact(char *blkbuf, size_t buflen, const blkptr_t *bp,
    boolean_t bp_freed)
{
 const dva_t *dva = bp->blk_dva;
 int ndvas = dump_opt['d'] > 5 ? BP_GET_NDVAS(bp) : 1;
 int i;

 if (dump_opt['b'] >= 6) {
  snprintf_blkptr(blkbuf, buflen, bp);
  if (bp_freed) {
   (void) snprintf(blkbuf + strlen(blkbuf),
       buflen - strlen(blkbuf), " %s", "FREE");
  }
  return;
 }

 if (BP_IS_EMBEDDED(bp)) {
  (void) sprintf(blkbuf,
      "EMBEDDED et=%u %llxL/%llxP B=%llu",
      (int)BPE_GET_ETYPE(bp),
      (u_longlong_t)BPE_GET_LSIZE(bp),
      (u_longlong_t)BPE_GET_PSIZE(bp),
      (u_longlong_t)bp->blk_birth);
  return;
 }

 blkbuf[0] = '\0';

 for (i = 0; i < ndvas; i++)
  (void) snprintf(blkbuf + strlen(blkbuf),
      buflen - strlen(blkbuf), "%llu:%llx:%llx ",
      (u_longlong_t)DVA_GET_VDEV(&dva[i]),
      (u_longlong_t)DVA_GET_OFFSET(&dva[i]),
      (u_longlong_t)DVA_GET_ASIZE(&dva[i]));

 if (BP_IS_HOLE(bp)) {
  (void) snprintf(blkbuf + strlen(blkbuf),
      buflen - strlen(blkbuf),
      "%llxL B=%llu",
      (u_longlong_t)BP_GET_LSIZE(bp),
      (u_longlong_t)bp->blk_birth);
 } else {
  (void) snprintf(blkbuf + strlen(blkbuf),
      buflen - strlen(blkbuf),
      "%llxL/%llxP F=%llu B=%llu/%llu",
      (u_longlong_t)BP_GET_LSIZE(bp),
      (u_longlong_t)BP_GET_PSIZE(bp),
      (u_longlong_t)BP_GET_FILL(bp),
      (u_longlong_t)bp->blk_birth,
      (u_longlong_t)BP_PHYSICAL_BIRTH(bp));
  if (bp_freed)
   (void) snprintf(blkbuf + strlen(blkbuf),
       buflen - strlen(blkbuf), " %s", "FREE");
 }
}
