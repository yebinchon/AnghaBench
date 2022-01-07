
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ NTSTATUS ;


 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_INVALID_PARAMETER_1 ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pRtlDeleteTimer (int *,int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlDeleteTimer(void)
{
    NTSTATUS ret;

    if (!pRtlDeleteTimer)
    {
        win_skip("RtlDeleteTimer is not available\n");
        return;
    }

    ret = pRtlDeleteTimer(((void*)0), ((void*)0), ((void*)0));
    ok(ret == STATUS_INVALID_PARAMETER_1 ||
       ret == STATUS_INVALID_PARAMETER,
       "expected STATUS_INVALID_PARAMETER_1 or STATUS_INVALID_PARAMETER, got %x\n", ret);
}
