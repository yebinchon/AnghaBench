
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin; int cos; int u; } ;
typedef TYPE_1__ sincos_t ;
struct TYPE_5__ {int sincos; } ;
typedef TYPE_2__ filter_sys_t ;


 int atomic_load (int *) ;

__attribute__((used)) static void fetch_trigo( filter_sys_t *sys, int *i_sin, int *i_cos )
{
    sincos_t sincos = { .u = atomic_load(&sys->sincos) };

    *i_sin = sincos.sin;
    *i_cos = sincos.cos;
}
