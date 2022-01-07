
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zs_enospc_count; } ;


 TYPE_1__* ztest_shared ;

__attribute__((used)) static void
ztest_record_enospc(const char *s)
{
 ztest_shared->zs_enospc_count++;
}
