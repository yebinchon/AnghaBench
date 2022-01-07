
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ IBackgroundCopyJob_AddFile (int ,int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;
 int test_localPathA ;
 int test_localPathB ;
 int test_remotePathA ;
 int test_remotePathB ;

__attribute__((used)) static void test_AddFile(void)
{
    HRESULT hres;

    hres = IBackgroundCopyJob_AddFile(test_job, test_remotePathA,
                                      test_localPathA);
    ok(hres == S_OK, "First call to AddFile failed: 0x%08x\n", hres);

    hres = IBackgroundCopyJob_AddFile(test_job, test_remotePathB,
                                      test_localPathB);
    ok(hres == S_OK, "Second call to AddFile failed: 0x%08x\n", hres);
}
