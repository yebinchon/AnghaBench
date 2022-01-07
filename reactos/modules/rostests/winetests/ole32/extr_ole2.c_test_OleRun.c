
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int HRESULT ;


 int OleRun (int *) ;
 int S_OK ;
 int ok (int,char*,int) ;
 int testrunnable ;
 int unknown ;

__attribute__((used)) static void test_OleRun(void)
{
    HRESULT hr;


    hr = OleRun(&unknown);
    ok(hr == S_OK, "OleRun failed 0x%08x\n", hr);

    hr = OleRun((IUnknown*)&testrunnable);
    ok(hr == 0xdeadc0de, "got 0x%08x\n", hr);
}
