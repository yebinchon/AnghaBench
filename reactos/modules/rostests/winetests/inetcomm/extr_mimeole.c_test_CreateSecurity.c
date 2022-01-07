
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMimeSecurity ;
typedef scalar_t__ HRESULT ;


 int IMimeSecurity_Release (int *) ;
 scalar_t__ MimeOleCreateSecurity (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_CreateSecurity(void)
{
    HRESULT hr;
    IMimeSecurity *sec;

    hr = MimeOleCreateSecurity(&sec);
    ok(hr == S_OK, "ret %08x\n", hr);

    IMimeSecurity_Release(sec);
}
