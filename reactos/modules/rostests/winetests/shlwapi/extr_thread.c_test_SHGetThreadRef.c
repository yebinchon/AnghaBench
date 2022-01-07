
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 int ok (int,char*,scalar_t__,int *) ;
 scalar_t__ pSHGetThreadRef (int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHGetThreadRef(void)
{
    IUnknown *punk;
    HRESULT hr;


    if (!pSHGetThreadRef) {
        win_skip("SHGetThreadRef not found\n");
        return;
    }

    punk = ((void*)0);
    hr = pSHGetThreadRef(&punk);
    ok( (hr == E_NOINTERFACE) && (punk == ((void*)0)),
        "got 0x%x and %p (expected E_NOINTERFACE and NULL)\n", hr, punk);

    if (0) {

        pSHGetThreadRef(((void*)0));
    }
}
