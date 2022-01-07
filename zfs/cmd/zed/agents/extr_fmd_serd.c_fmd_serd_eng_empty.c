
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sg_count; } ;
typedef TYPE_1__ fmd_serd_eng_t ;



int
fmd_serd_eng_empty(fmd_serd_eng_t *sgp)
{
 return (sgp->sg_count == 0);
}
