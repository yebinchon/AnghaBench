
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct provideclassinfo {int const* guid; int * outer; TYPE_1__ IProvideClassInfo_iface; } ;
typedef int IUnknown ;
typedef int GUID ;


 int provideclassinfovtbl ;

void init_classinfo(const GUID *guid, IUnknown *outer, struct provideclassinfo *classinfo)
{
    classinfo->IProvideClassInfo_iface.lpVtbl = &provideclassinfovtbl;
    classinfo->outer = outer;
    classinfo->guid = guid;
}
