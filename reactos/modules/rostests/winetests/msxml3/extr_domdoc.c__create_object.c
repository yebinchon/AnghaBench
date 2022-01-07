
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IID ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (int const*,int *,int ,int const*,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void* _create_object(const GUID *clsid, const char *name, const IID *iid, int line)
{
    void *obj = ((void*)0);
    HRESULT hr;

    hr = CoCreateInstance(clsid, ((void*)0), CLSCTX_INPROC_SERVER, iid, &obj);
    ok(hr == S_OK, "failed to create %s instance: 0x%08x\n", name, hr);

    return obj;
}
