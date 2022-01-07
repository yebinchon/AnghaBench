
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gdi_dc_funcs {int dummy; } ;
struct TYPE_6__ {TYPE_1__* physDev; } ;
struct TYPE_5__ {struct TYPE_5__* next; struct gdi_dc_funcs const* funcs; } ;
typedef TYPE_1__* PHYSDEV ;
typedef TYPE_2__ DC ;



__attribute__((used)) static inline PHYSDEV pop_dc_driver( DC *dc, const struct gdi_dc_funcs *funcs )
{
    PHYSDEV dev, *pdev = &dc->physDev;
    while (*pdev && (*pdev)->funcs != funcs) pdev = &(*pdev)->next;
    if (!*pdev) return ((void*)0);
    dev = *pdev;
    *pdev = dev->next;
    return dev;
}
