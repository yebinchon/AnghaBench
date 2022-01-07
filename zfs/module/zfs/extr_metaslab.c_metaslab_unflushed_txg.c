
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ms_unflushed_txg; } ;
typedef TYPE_1__ metaslab_t ;



uint64_t
metaslab_unflushed_txg(metaslab_t *ms)
{
 return (ms->ms_unflushed_txg);
}
