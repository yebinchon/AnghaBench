
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 int FALSE ;
 scalar_t__ OleLockRunning (int *,int ,int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int unknown ;

__attribute__((used)) static void test_OleLockRunning(void)
{
    HRESULT hr;

    hr = OleLockRunning(&unknown, TRUE, FALSE);
    ok(hr == S_OK, "OleLockRunning failed 0x%08x\n", hr);
}
