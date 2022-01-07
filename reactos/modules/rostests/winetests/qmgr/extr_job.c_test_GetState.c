
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ BG_JOB_STATE ;


 scalar_t__ BG_JOB_STATE_ERROR ;
 scalar_t__ BG_JOB_STATE_SUSPENDED ;
 scalar_t__ IBackgroundCopyJob_GetState (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;

__attribute__((used)) static void test_GetState(void)
{
    HRESULT hres;
    BG_JOB_STATE state;

    state = BG_JOB_STATE_ERROR;
    hres = IBackgroundCopyJob_GetState(test_job, &state);
    ok(hres == S_OK, "GetState failed: 0x%08x\n", hres);
    ok(state == BG_JOB_STATE_SUSPENDED, "Incorrect job state: %d\n", state);
}
