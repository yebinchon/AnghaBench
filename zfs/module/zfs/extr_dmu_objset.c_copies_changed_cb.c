
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ os_copies; int os_spa; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 scalar_t__ spa_max_replication (int ) ;

__attribute__((used)) static void
copies_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval > 0);
 ASSERT(newval <= spa_max_replication(os->os_spa));

 os->os_copies = newval;
}
