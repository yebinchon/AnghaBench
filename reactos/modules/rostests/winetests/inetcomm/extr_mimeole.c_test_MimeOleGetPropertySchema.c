
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMimePropertySchema ;
typedef scalar_t__ HRESULT ;


 int IMimePropertySchema_Release (int *) ;
 scalar_t__ MimeOleGetPropertySchema (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_MimeOleGetPropertySchema(void)
{
    HRESULT hr;
    IMimePropertySchema *schema = ((void*)0);

    hr = MimeOleGetPropertySchema(&schema);
    ok(hr == S_OK, "ret %08x\n", hr);

    IMimePropertySchema_Release(schema);
}
