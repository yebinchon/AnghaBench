
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_3__ {int GrantedAccess; } ;
typedef TYPE_1__ OBJECT_BASIC_INFORMATION ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int ACCESS_MASK ;


 int ObjectBasicInformation ;
 int ok (int,char*,int ) ;
 int pNtQueryObject (int ,int ,TYPE_1__*,int,int *) ;

__attribute__((used)) static ACCESS_MASK get_obj_access(HANDLE obj)
{
    OBJECT_BASIC_INFORMATION info;
    NTSTATUS status;

    if (!pNtQueryObject) return 0;

    status = pNtQueryObject(obj, ObjectBasicInformation, &info, sizeof(info), ((void*)0));
    ok(!status, "NtQueryObject error %#x\n", status);

    return info.GrantedAccess;
}
