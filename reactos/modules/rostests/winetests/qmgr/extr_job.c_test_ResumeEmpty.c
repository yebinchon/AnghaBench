
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ BG_JOB_STATE ;


 scalar_t__ BG_E_EMPTY ;
 scalar_t__ BG_JOB_STATE_ERROR ;
 scalar_t__ BG_JOB_STATE_SUSPENDED ;
 scalar_t__ IBackgroundCopyJob_GetState (int ,scalar_t__*) ;
 scalar_t__ IBackgroundCopyJob_Resume (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;

__attribute__((used)) static void test_ResumeEmpty(void)
{
    HRESULT hres;
    BG_JOB_STATE state;

    hres = IBackgroundCopyJob_Resume(test_job);
    ok(hres == BG_E_EMPTY, "Resume failed to return BG_E_EMPTY error: 0x%08x\n", hres);

    state = BG_JOB_STATE_ERROR;
    hres = IBackgroundCopyJob_GetState(test_job, &state);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(state == BG_JOB_STATE_SUSPENDED, "Incorrect job state: %d\n", state);
}
