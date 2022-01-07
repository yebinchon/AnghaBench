
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ BG_JOB_STATE ;


 scalar_t__ BG_E_INVALID_STATE ;
 scalar_t__ BG_JOB_STATE_CANCELLED ;
 scalar_t__ BG_JOB_STATE_ERROR ;
 scalar_t__ IBackgroundCopyJob_Cancel (int ) ;
 scalar_t__ IBackgroundCopyJob_GetState (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;

__attribute__((used)) static void test_Cancel(void)
{
    HRESULT hr;
    BG_JOB_STATE state;

    state = BG_JOB_STATE_ERROR;
    hr = IBackgroundCopyJob_GetState(test_job, &state);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(state != BG_JOB_STATE_CANCELLED, "got %u\n", state);

    hr = IBackgroundCopyJob_Cancel(test_job);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    state = BG_JOB_STATE_ERROR;
    hr = IBackgroundCopyJob_GetState(test_job, &state);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(state == BG_JOB_STATE_CANCELLED, "got %u\n", state);

    hr = IBackgroundCopyJob_Cancel(test_job);
    ok(hr == BG_E_INVALID_STATE, "got 0x%08x\n", hr);
}
