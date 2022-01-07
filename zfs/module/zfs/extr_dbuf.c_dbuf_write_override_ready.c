
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int dmu_buf_impl_t ;
struct TYPE_6__ {int * dr_dbuf; } ;
typedef TYPE_2__ dbuf_dirty_record_t ;


 int dbuf_write_ready (TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
dbuf_write_override_ready(zio_t *zio)
{
 dbuf_dirty_record_t *dr = zio->io_private;
 dmu_buf_impl_t *db = dr->dr_dbuf;

 dbuf_write_ready(zio, ((void*)0), db);
}
