
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_1__ IHlinkTarget_iface; } ;
typedef TYPE_2__ HTMLDocument ;


 int HlinkTargetVtbl ;

void HTMLDocument_Hlink_Init(HTMLDocument *This)
{
    This->IHlinkTarget_iface.lpVtbl = &HlinkTargetVtbl;
}
