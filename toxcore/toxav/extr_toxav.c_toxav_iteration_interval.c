
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int interval; scalar_t__ calls; } ;
typedef TYPE_1__ ToxAV ;



uint32_t toxav_iteration_interval(const ToxAV *av)
{

    return av->calls ? av->interval : 200;
}
