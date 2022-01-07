
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int IUnknown ;


 scalar_t__ IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;

__attribute__((used)) static LONG get_refcount(void *iface)
{
    IUnknown *unk = iface;
    LONG ref;

    ref = IUnknown_AddRef(unk);
    IUnknown_Release(unk);
    return ref-1;
}
