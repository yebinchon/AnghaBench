
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IAMStreamSelect ;
typedef scalar_t__ HRESULT ;


 int IAMStreamSelect_Release (int *) ;
 int IID_IAMStreamSelect ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_mpeg_splitter () ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_query_interface(void)
{
    IUnknown *mpeg_splitter = create_mpeg_splitter();

    IAMStreamSelect *stream_select = ((void*)0);
    HRESULT result = IUnknown_QueryInterface(
            mpeg_splitter, &IID_IAMStreamSelect, (void **)&stream_select);
    ok(S_OK == result, "got 0x%08x\n", result);
    if (S_OK == result)
    {
        IAMStreamSelect_Release(stream_select);
    }

    IUnknown_Release(mpeg_splitter);
}
