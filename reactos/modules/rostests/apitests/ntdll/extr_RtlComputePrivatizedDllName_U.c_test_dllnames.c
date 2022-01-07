
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;
typedef int Buf2 ;
typedef int Buf1 ;


 int MAX_PATH ;
 scalar_t__ RtlComputePrivatizedDllName_U (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int RtlInitEmptyUnicodeString (TYPE_1__*,int *,int) ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 scalar_t__ STATUS_SUCCESS ;
 int cleanup (TYPE_1__*,int *,int) ;
 int ok (int,char*,scalar_t__) ;
 int ok_strings (TYPE_1__*,TYPE_1__*,char*) ;
 int trace (char*) ;
 scalar_t__ wcsstr (int ,char*) ;

__attribute__((used)) static void test_dllnames(void)
{
    WCHAR Buf1[MAX_PATH];
    WCHAR Buf2[MAX_PATH];

    UNICODE_STRING Str1, Str2;
    UNICODE_STRING DllName;
    NTSTATUS Status;

    RtlInitEmptyUnicodeString(&Str1, Buf1, sizeof(Buf1));
    RtlInitEmptyUnicodeString(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"kernel32.dll");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));


    RtlInitUnicodeString(&DllName, L"kernel32");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"kernel32.dll.dll");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll.dll");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"kernel32.dll.exe");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll.exe");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"kernel32.");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L".kernel32");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L".kernel32.DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"..kernel32");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"..kernel32");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L".kernel32.");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L".kernel32.");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));


    RtlInitUnicodeString(&DllName, L"test\\kernel32.dll");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"test/kernel32.dll");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.dll");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"test.dll/kernel32");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"test.dll\\kernel32");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L"kernel32.DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"//");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L".DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));


    RtlInitUnicodeString(&DllName, L"\\");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    if (wcsstr(Str1.Buffer, L"\\\\"))
    {
        trace("Allowing bug found in windows' implementation\n");
        ok_strings(&Str1, &Str2, L"\\.DLL");
    }
    else
    {
        ok_strings(&Str1, &Str2, L".DLL");
    }
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));

    RtlInitUnicodeString(&DllName, L"");
    Status = RtlComputePrivatizedDllName_U(&DllName, &Str1, &Str2);
    ok(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    ok_strings(&Str1, &Str2, L".DLL");
    cleanup(&Str1, Buf1, sizeof(Buf1));
    cleanup(&Str2, Buf2, sizeof(Buf2));
}
