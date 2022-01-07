
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wParamFlags; int pparamdescex; } ;
struct TYPE_6__ {TYPE_1__ paramdesc; } ;
struct TYPE_7__ {TYPE_2__ u; int tdesc; } ;
typedef TYPE_3__ ELEMDESC ;


 int CoTaskMemFree (int ) ;
 int PARAMFLAG_FHASDEFAULT ;
 int free_embedded_typedesc (int *) ;

__attribute__((used)) static void free_embedded_elemdesc(ELEMDESC *edesc)
{
    free_embedded_typedesc(&edesc->tdesc);
    if(edesc->u.paramdesc.wParamFlags & PARAMFLAG_FHASDEFAULT)
        CoTaskMemFree(edesc->u.paramdesc.pparamdescex);
}
