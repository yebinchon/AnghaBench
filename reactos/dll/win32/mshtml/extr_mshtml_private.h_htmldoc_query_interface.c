
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unk_impl; } ;
typedef int REFIID ;
typedef TYPE_1__ HTMLDocument ;
typedef int HRESULT ;


 int IUnknown_QueryInterface (int ,int ,void**) ;

__attribute__((used)) static inline HRESULT htmldoc_query_interface(HTMLDocument *This, REFIID riid, void **ppv)
{
    return IUnknown_QueryInterface(This->unk_impl, riid, ppv);
}
