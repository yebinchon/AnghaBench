
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int zilog_t ;
struct TYPE_25__ {scalar_t__ zcb_lastprint; int zcb_start; int zcb_totalasize; TYPE_1__** zcb_type; scalar_t__ zcb_readfails; } ;
typedef TYPE_2__ zdb_cb_t ;
struct TYPE_26__ {scalar_t__ zb_level; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
typedef TYPE_3__ zbookmark_phys_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_27__ {scalar_t__ spa_load_verify_bytes; int spa_scrub_lock; int spa_scrub_io_cv; } ;
typedef TYPE_4__ spa_t ;
typedef int longlong_t ;
typedef int dnode_phys_t ;
typedef int dmu_object_type_t ;
typedef int buf ;
typedef int boolean_t ;
struct TYPE_28__ {scalar_t__ blk_birth; } ;
typedef TYPE_5__ blkptr_t ;
typedef int blkbuf ;
typedef int abd_t ;
struct TYPE_24__ {int zb_asize; } ;


 scalar_t__ BP_GET_LEVEL (TYPE_5__ const*) ;
 size_t BP_GET_PSIZE (TYPE_5__ const*) ;
 int BP_GET_TYPE (TYPE_5__ const*) ;
 int BP_IS_EMBEDDED (TYPE_5__ const*) ;
 scalar_t__ BP_IS_HOLE (TYPE_5__ const*) ;
 scalar_t__ BP_IS_REDACTED (TYPE_5__ const*) ;
 int BP_SPRINTF_LEN ;
 int B_FALSE ;
 int CTASSERT (int) ;
 scalar_t__ DMU_OT_IS_METADATA (int) ;
 int DMU_OT_NEWTYPE ;
 scalar_t__ NANOSEC ;
 int NN_NUMBUF_SZ ;
 scalar_t__ ZB_DNODE_LEVEL ;
 size_t ZB_TOTAL ;
 scalar_t__ ZB_ZIL_LEVEL ;
 int ZDB_OT_OTHER ;
 size_t ZDB_OT_TOTAL ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_ASYNC_READ ;
 int * abd_alloc (size_t,int ) ;
 scalar_t__ blkid2offset (int const*,TYPE_5__ const*,TYPE_3__ const*) ;
 int cv_wait (int *,int *) ;
 int* dump_opt ;
 int fprintf (int ,char*,char*,int,int,int,int) ;
 scalar_t__ gethrtime () ;
 scalar_t__ max_inflight_bytes ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,int ,int ,int ,int ,char*) ;
 int snprintf_blkptr (char*,int,TYPE_5__ const*) ;
 int stderr ;
 int zdb_blkptr_done ;
 int zdb_count_block (TYPE_2__*,int *,TYPE_5__ const*,int) ;
 int zfs_nicebytes (int,char*,int) ;
 int zio_nowait (int ) ;
 int zio_read (int *,TYPE_4__*,TYPE_5__ const*,int *,size_t,int ,TYPE_2__*,int ,int,TYPE_3__ const*) ;

__attribute__((used)) static int
zdb_blkptr_cb(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 zdb_cb_t *zcb = arg;
 dmu_object_type_t type;
 boolean_t is_metadata;

 if (zb->zb_level == ZB_DNODE_LEVEL)
  return (0);

 if (dump_opt['b'] >= 5 && bp->blk_birth > 0) {
  char blkbuf[BP_SPRINTF_LEN];
  snprintf_blkptr(blkbuf, sizeof (blkbuf), bp);
  (void) printf("objset %llu object %llu "
      "level %lld offset 0x%llx %s\n",
      (u_longlong_t)zb->zb_objset,
      (u_longlong_t)zb->zb_object,
      (longlong_t)zb->zb_level,
      (u_longlong_t)blkid2offset(dnp, bp, zb),
      blkbuf);
 }

 if (BP_IS_HOLE(bp) || BP_IS_REDACTED(bp))
  return (0);

 type = BP_GET_TYPE(bp);

 zdb_count_block(zcb, zilog, bp,
     (type & DMU_OT_NEWTYPE) ? ZDB_OT_OTHER : type);

 is_metadata = (BP_GET_LEVEL(bp) != 0 || DMU_OT_IS_METADATA(type));

 if (!BP_IS_EMBEDDED(bp) &&
     (dump_opt['c'] > 1 || (dump_opt['c'] && is_metadata))) {
  size_t size = BP_GET_PSIZE(bp);
  abd_t *abd = abd_alloc(size, B_FALSE);
  int flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SCRUB | ZIO_FLAG_RAW;


  if (zb->zb_level == ZB_ZIL_LEVEL)
   flags |= ZIO_FLAG_SPECULATIVE;

  mutex_enter(&spa->spa_scrub_lock);
  while (spa->spa_load_verify_bytes > max_inflight_bytes)
   cv_wait(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
  spa->spa_load_verify_bytes += size;
  mutex_exit(&spa->spa_scrub_lock);

  zio_nowait(zio_read(((void*)0), spa, bp, abd, size,
      zdb_blkptr_done, zcb, ZIO_PRIORITY_ASYNC_READ, flags, zb));
 }

 zcb->zcb_readfails = 0;


 static int iters;
 if (++iters > 100)
  iters = 0;
 else
  return (0);

 if (dump_opt['b'] < 5 && gethrtime() > zcb->zcb_lastprint + NANOSEC) {
  uint64_t now = gethrtime();
  char buf[10];
  uint64_t bytes = zcb->zcb_type[ZB_TOTAL][ZDB_OT_TOTAL].zb_asize;
  int kb_per_sec =
      1 + bytes / (1 + ((now - zcb->zcb_start) / 1000 / 1000));
  int sec_remaining =
      (zcb->zcb_totalasize - bytes) / 1024 / kb_per_sec;


  CTASSERT(sizeof (buf) >= NN_NUMBUF_SZ);

  zfs_nicebytes(bytes, buf, sizeof (buf));
  (void) fprintf(stderr,
      "\r%5s completed (%4dMB/s) "
      "estimated time remaining: %uhr %02umin %02usec        ",
      buf, kb_per_sec / 1024,
      sec_remaining / 60 / 60,
      sec_remaining / 60 % 60,
      sec_remaining % 60);

  zcb->zcb_lastprint = now;
 }

 return (0);
}
