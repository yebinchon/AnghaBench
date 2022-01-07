
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ os_zpl_special_smallblock; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 int ISP2 (scalar_t__) ;
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ;

__attribute__((used)) static void
smallblk_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval <= SPA_OLD_MAXBLOCKSIZE);
 ASSERT(ISP2(newval));

 os->os_zpl_special_smallblock = newval;
}
