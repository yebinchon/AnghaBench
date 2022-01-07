
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int unk_impl; } ;
typedef TYPE_1__ HTMLDocument ;


 int IUnknown_Release (int ) ;

__attribute__((used)) static inline ULONG htmldoc_release(HTMLDocument *This)
{
    return IUnknown_Release(This->unk_impl);
}
