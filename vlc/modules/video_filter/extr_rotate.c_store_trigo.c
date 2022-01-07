
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int u; void* cos; void* sin; } ;
typedef TYPE_1__ sincos_t ;
struct TYPE_5__ {int sincos; } ;
typedef TYPE_2__ filter_sys_t ;


 int M_PI ;
 int atomic_store (int *,int ) ;
 float cosf (float) ;
 void* lroundf (float) ;
 float sinf (float) ;

__attribute__((used)) static void store_trigo( filter_sys_t *sys, float f_angle )
{
    sincos_t sincos;

    f_angle *= (float)(M_PI / 180.);

    sincos.sin = lroundf(sinf(f_angle) * 4096.f);
    sincos.cos = lroundf(cosf(f_angle) * 4096.f);
    atomic_store(&sys->sincos, sincos.u);
}
