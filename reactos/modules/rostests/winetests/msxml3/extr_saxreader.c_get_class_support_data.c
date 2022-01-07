
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msxmlsupported_data_t {int supported; int name; scalar_t__ clsid; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (scalar_t__,int *,int ,int ,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int win_skip (char*,int ) ;

__attribute__((used)) static void get_class_support_data(struct msxmlsupported_data_t *table, REFIID riid)
{
    while (table->clsid)
    {
        IUnknown *unk;
        HRESULT hr;

        hr = CoCreateInstance(table->clsid, ((void*)0), CLSCTX_INPROC_SERVER, riid, (void**)&unk);
        if (hr == S_OK) IUnknown_Release(unk);

        table->supported = hr == S_OK;
        if (hr != S_OK) win_skip("class %s not supported\n", table->name);

        table++;
    }
}
