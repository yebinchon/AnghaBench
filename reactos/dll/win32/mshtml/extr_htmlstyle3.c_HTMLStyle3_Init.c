
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_11__ {TYPE_4__ IHTMLStyle6_iface; TYPE_3__ IHTMLStyle5_iface; TYPE_2__ IHTMLStyle4_iface; TYPE_1__ IHTMLStyle3_iface; } ;
typedef TYPE_5__ HTMLStyle ;


 int HTMLStyle3Vtbl ;
 int HTMLStyle4Vtbl ;
 int HTMLStyle5Vtbl ;
 int HTMLStyle6Vtbl ;

void HTMLStyle3_Init(HTMLStyle *This)
{
    This->IHTMLStyle3_iface.lpVtbl = &HTMLStyle3Vtbl;
    This->IHTMLStyle4_iface.lpVtbl = &HTMLStyle4Vtbl;
    This->IHTMLStyle5_iface.lpVtbl = &HTMLStyle5Vtbl;
    This->IHTMLStyle6_iface.lpVtbl = &HTMLStyle6Vtbl;
}
