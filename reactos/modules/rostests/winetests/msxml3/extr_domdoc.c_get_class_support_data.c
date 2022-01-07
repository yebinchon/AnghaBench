
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msxmlsupported_data_t {int* supported; int ** ifaces; int name; scalar_t__ clsid; } ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int ARRAY_SIZE (int **) ;
 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (scalar_t__,int *,int ,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int debugstr_msxml_guid (int *) ;
 int win_skip (char*,int ,int ) ;

__attribute__((used)) static void get_class_support_data(struct msxmlsupported_data_t *table)
{
    while (table->clsid)
    {
        IUnknown *unk;
        HRESULT hr;
        int i;

        for (i = 0; i < ARRAY_SIZE(table->ifaces) && table->ifaces[i] != ((void*)0); i++)
        {
            hr = CoCreateInstance(table->clsid, ((void*)0), CLSCTX_INPROC_SERVER, table->ifaces[i], (void**)&unk);
            if (hr == S_OK) IUnknown_Release(unk);

            table->supported[i] = hr == S_OK;
            if (hr != S_OK) win_skip("class %s, iface %s not supported\n", table->name, debugstr_msxml_guid(table->ifaces[i]));
        }

        table++;
    }
}
