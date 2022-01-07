
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ BG_FILE_INFO ;


 scalar_t__ IBackgroundCopyJob_AddFileSet (int ,int,TYPE_1__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;
 int test_localPathA ;
 int test_localPathB ;
 int test_remotePathA ;
 int test_remotePathB ;

__attribute__((used)) static void test_AddFileSet(void)
{
    HRESULT hres;
    BG_FILE_INFO files[2] =
        {
            {test_remotePathA, test_localPathA},
            {test_remotePathB, test_localPathB}
        };
    hres = IBackgroundCopyJob_AddFileSet(test_job, 2, files);
    ok(hres == S_OK, "AddFileSet failed: 0x%08x\n", hres);
}
