
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;


 int ApphelpCacheServiceRemove ;
 scalar_t__ CallCacheControl (int *,int ,int ) ;
 int FALSE ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_NOT_FOUND ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,scalar_t__) ;

int InitEnv(UNICODE_STRING* PathName)
{
    NTSTATUS Status = CallCacheControl(PathName, FALSE, ApphelpCacheServiceRemove);
    if (Status == STATUS_INVALID_PARAMETER)
    {

        return 0;
    }
    ok(Status == STATUS_SUCCESS || Status == STATUS_NOT_FOUND,
        "Wrong value for Status, expected: SUCCESS or NOT_FOUND, got: 0x%lx\n",
        Status);
    return 1;
}
