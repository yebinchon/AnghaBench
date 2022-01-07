
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int * Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;
typedef int Buf2 ;
typedef int Buf1 ;


 scalar_t__ RtlComputePrivatizedDllName_U (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int RtlInitEmptyUnicodeString (TYPE_1__*,int *,int) ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 scalar_t__ STATUS_SUCCESS ;
 int cleanup (TYPE_1__*,int *,int) ;
 int ok (int,char*,...) ;
 int ok_strings (TYPE_1__*,TYPE_1__*,char*) ;

__attribute__((used)) static void test_allocations(void)
{
    WCHAR Buf1[10];
    WCHAR Buf2[10];

    UNICODE_STRING Str1, Str2;
    UNICODE_STRING DllName;
    NTSTATUS Status;

    RtlInitEmptyUnicodeString(&Str1, Buf1, sizeof(Buf1));
    RtlInitEmptyUnicodeString(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"kernel32.dll");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll");
    ok(Str1.Buffer != Buf1, "Expected a changed buffer\n");
    ok(Str2.Buffer != Buf2, "Expected a changed buffer\n");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));
}
