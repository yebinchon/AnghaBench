
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ BG_JOB_TYPE ;


 scalar_t__ IBackgroundCopyJob_GetType (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_job ;
 scalar_t__ test_type ;

__attribute__((used)) static void test_GetType(void)
{
    HRESULT hres;
    BG_JOB_TYPE type;

    hres = IBackgroundCopyJob_GetType(test_job, &type);
    ok(hres == S_OK, "GetType failed: %08x\n", hres);
    ok(type == test_type, "Got incorrect type\n");
}
