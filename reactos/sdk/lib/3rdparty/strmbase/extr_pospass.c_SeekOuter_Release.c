
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int IUnknown_inner; int * outer_unk; scalar_t__ bUnkOuterValid; } ;
typedef TYPE_1__ PassThruImpl ;


 int IUnknown_Release (int *) ;

__attribute__((used)) static ULONG SeekOuter_Release(PassThruImpl *This)
{
    if (This->outer_unk && This->bUnkOuterValid)
        return IUnknown_Release(This->outer_unk);
    return IUnknown_Release(&This->IUnknown_inner);
}
