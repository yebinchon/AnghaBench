
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int os_checksum; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 scalar_t__ ZIO_CHECKSUM_INHERIT ;
 int ZIO_CHECKSUM_ON_VALUE ;
 int zio_checksum_select (scalar_t__,int ) ;

__attribute__((used)) static void
checksum_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval != ZIO_CHECKSUM_INHERIT);

 os->os_checksum = zio_checksum_select(newval, ZIO_CHECKSUM_ON_VALUE);
}
