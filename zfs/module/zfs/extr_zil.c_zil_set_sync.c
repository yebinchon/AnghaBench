
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_sync; } ;
typedef TYPE_1__ zilog_t ;
typedef int uint64_t ;



void
zil_set_sync(zilog_t *zilog, uint64_t sync)
{
 zilog->zl_sync = sync;
}
