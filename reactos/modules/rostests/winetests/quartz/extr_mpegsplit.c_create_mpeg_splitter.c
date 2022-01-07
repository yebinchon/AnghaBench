
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_MPEG1Splitter ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IUnknown ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IUnknown *create_mpeg_splitter(void)
{
    IUnknown *mpeg_splitter = ((void*)0);
    HRESULT result = CoCreateInstance(&CLSID_MPEG1Splitter, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IUnknown, (void **)&mpeg_splitter);
    ok(S_OK == result, "got 0x%08x\n", result);
    return mpeg_splitter;
}
