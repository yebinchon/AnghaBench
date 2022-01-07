
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int os_spa; int os_compress; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 int ZIO_COMPRESS_INHERIT ;
 int ZIO_COMPRESS_ON ;
 int zio_compress_select (int ,int ,int ) ;

__attribute__((used)) static void
compression_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval != ZIO_COMPRESS_INHERIT);

 os->os_compress = zio_compress_select(os->os_spa, newval,
     ZIO_COMPRESS_ON);
}
