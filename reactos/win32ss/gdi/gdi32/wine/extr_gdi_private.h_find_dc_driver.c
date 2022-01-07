
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gdi_dc_funcs {int dummy; } ;
struct TYPE_6__ {TYPE_1__* physDev; } ;
struct TYPE_5__ {struct gdi_dc_funcs const* funcs; struct TYPE_5__* next; } ;
typedef TYPE_1__* PHYSDEV ;
typedef TYPE_2__ DC ;



__attribute__((used)) static inline PHYSDEV find_dc_driver( DC *dc, const struct gdi_dc_funcs *funcs )
{
    PHYSDEV dev;

    for (dev = dc->physDev; dev; dev = dev->next) if (dev->funcs == funcs) return dev;
    return ((void*)0);
}
