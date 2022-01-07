
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int attr ;
struct TYPE_3__ {int Length; int * SecurityQualityOfService; int * SecurityDescriptor; scalar_t__ Attributes; int * ObjectName; scalar_t__ RootDirectory; } ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;


 scalar_t__ STATUS_OBJECT_TYPE_MISMATCH ;
 int ok (int,char*,scalar_t__) ;
 int pNtClose (int ) ;
 scalar_t__ pNtCreateEvent (int *,int ,TYPE_1__*,int ,int ) ;
 scalar_t__ pNtReleaseSemaphore (int ,int,int *) ;

__attribute__((used)) static void test_type_mismatch(void)
{
    HANDLE h;
    NTSTATUS res;
    OBJECT_ATTRIBUTES attr;

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = ((void*)0);
    attr.Attributes = 0;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);

    res = pNtCreateEvent( &h, 0, &attr, 0, 0 );
    ok(!res, "can't create event: %x\n", res);

    res = pNtReleaseSemaphore( h, 30, ((void*)0) );
    ok(res == STATUS_OBJECT_TYPE_MISMATCH, "expected 0xc0000024, got %x\n", res);

    pNtClose( h );
}
