
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ BytesTotal; scalar_t__ BytesTransferred; scalar_t__ FilesTotal; scalar_t__ FilesTransferred; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ BG_JOB_PROGRESS ;


 scalar_t__ IBackgroundCopyJob_GetProgress (int ,TYPE_1__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;
 scalar_t__ wine_dbgstr_longlong (scalar_t__) ;

__attribute__((used)) static void test_GetProgress_preTransfer(void)
{
    HRESULT hres;
    BG_JOB_PROGRESS progress;

    hres = IBackgroundCopyJob_GetProgress(test_job, &progress);
    ok(hres == S_OK, "GetProgress failed: 0x%08x\n", hres);

    ok(progress.BytesTotal == 0, "Incorrect BytesTotal: %s\n",
       wine_dbgstr_longlong(progress.BytesTotal));
    ok(progress.BytesTransferred == 0, "Incorrect BytesTransferred: %s\n",
       wine_dbgstr_longlong(progress.BytesTransferred));
    ok(progress.FilesTotal == 0, "Incorrect FilesTotal: %u\n", progress.FilesTotal);
    ok(progress.FilesTransferred == 0, "Incorrect FilesTransferred %u\n", progress.FilesTransferred);
}
