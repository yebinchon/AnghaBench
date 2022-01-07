
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFERENCE_TIME ;
typedef int LONG ;
typedef int IReferenceClock ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_POINTER ;
 scalar_t__ IReferenceClock_GetTime (int *,int*) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int Sleep (int) ;
 int ok (int,char*,char const*,...) ;

__attribute__((used)) static void test_IReferenceClock_methods(const char * clockdesc, IReferenceClock * pClock)
{
    HRESULT hr;
    REFERENCE_TIME time1;
    REFERENCE_TIME time2;
    LONG diff;


    hr = IReferenceClock_GetTime(pClock, ((void*)0));
    ok (hr == E_POINTER, "%s - Expected E_POINTER (0x%08x), got 0x%08x\n", clockdesc, E_POINTER, hr);



    time1 = (REFERENCE_TIME)0xdeadbeef;
    hr = IReferenceClock_GetTime(pClock, &time1);
    ok (hr == S_FALSE || hr == S_OK, "%s - Expected S_OK or S_FALSE, got 0x%08x\n", clockdesc, hr);
    ok (time1 != 0xdeadbeef, "%s - value was NOT changed on return!\n", clockdesc);


    time2 = (REFERENCE_TIME)0xdeadbeef;
    hr = IReferenceClock_GetTime(pClock, &time2);
    ok (hr == S_FALSE || hr == S_OK, "%s - Expected S_OK or S_FALSE, got 0x%08x\n", clockdesc, hr);
    ok (time2 != 0xdeadbeef, "%s - value was NOT changed on return!\n", clockdesc);



    ok ((hr != S_FALSE || time1 == time2), "%s - returned S_FALSE, but values not equal!\n", clockdesc);

    time1 = time2;
    Sleep(1000);
    hr = IReferenceClock_GetTime(pClock, &time2);

    ok (hr == S_OK, "%s - Expected S_OK, got 0x%08x\n", clockdesc, hr);



    diff = time2 - time1;
    ok (9940000 <= diff && diff <= 10240000, "%s - Expected difference around 10000000, got %u\n", clockdesc, diff);

}
