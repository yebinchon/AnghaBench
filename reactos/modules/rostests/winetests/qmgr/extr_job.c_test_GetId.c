
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ IBackgroundCopyJob_GetId (int ,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ memcmp (int *,int *,int) ;
 int ok (int,char*,...) ;
 int test_job ;
 int test_jobId ;

__attribute__((used)) static void test_GetId(void)
{
    HRESULT hres;
    GUID tmpId;

    hres = IBackgroundCopyJob_GetId(test_job, &tmpId);
    ok(hres == S_OK, "GetId failed: %08x\n", hres);
    ok(memcmp(&tmpId, &test_jobId, sizeof tmpId) == 0, "Got incorrect GUID\n");
}
