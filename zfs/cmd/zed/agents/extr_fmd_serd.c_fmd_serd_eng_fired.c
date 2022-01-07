
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sg_flags; } ;
typedef TYPE_1__ fmd_serd_eng_t ;


 int FMD_SERD_FIRED ;

int
fmd_serd_eng_fired(fmd_serd_eng_t *sgp)
{
 return (sgp->sg_flags & FMD_SERD_FIRED);
}
