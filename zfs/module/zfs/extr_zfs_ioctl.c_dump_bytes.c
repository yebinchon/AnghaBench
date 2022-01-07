
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_5__ {int dbi_len; int dbi_err; void* dbi_buf; void* dbi_vp; } ;
typedef TYPE_1__ dump_bytes_io_t ;


 int TQ_SLEEP ;
 int ZIO_TASKQ_ISSUE ;
 int ZIO_TYPE_FREE ;
 int dmu_objset_spa (int *) ;
 int dump_bytes_cb (TYPE_1__*) ;
 int spa_taskq_dispatch_sync (int ,int ,int ,int (*) (TYPE_1__*),TYPE_1__*,int ) ;

__attribute__((used)) static int
dump_bytes(objset_t *os, void *buf, int len, void *arg)
{
 dump_bytes_io_t dbi;

 dbi.dbi_vp = arg;
 dbi.dbi_buf = buf;
 dbi.dbi_len = len;
 spa_taskq_dispatch_sync(dmu_objset_spa(os), ZIO_TYPE_FREE,
     ZIO_TASKQ_ISSUE, dump_bytes_cb, &dbi, TQ_SLEEP);


 return (dbi.dbi_err);
}
