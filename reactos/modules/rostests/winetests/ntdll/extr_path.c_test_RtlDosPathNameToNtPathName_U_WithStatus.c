
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int UNICODE_STRING ;
typedef scalar_t__ NTSTATUS ;


 int GetCurrentDirectoryW (int,int const*) ;
 int MAX_PATH ;
 int RtlFreeUnicodeString (int *) ;
 scalar_t__ STATUS_OBJECT_NAME_INVALID ;
 scalar_t__ STATUS_OBJECT_PATH_NOT_FOUND ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pRtlDosPathNameToNtPathName_U_WithStatus (int const*,int *,int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlDosPathNameToNtPathName_U_WithStatus(void)
{
    static const WCHAR emptyW[] = { 0 };
    WCHAR path[MAX_PATH];
    UNICODE_STRING nameW;
    NTSTATUS status;

    if (!pRtlDosPathNameToNtPathName_U_WithStatus)
    {
        win_skip("RtlDosPathNameToNtPathName_U_WithStatus() is not supported.\n");
        return;
    }

    GetCurrentDirectoryW( MAX_PATH, path );

    status = pRtlDosPathNameToNtPathName_U_WithStatus( path, &nameW, ((void*)0), ((void*)0) );
    ok(!status, "Failed convert to nt path, %#x.\n", status);

    status = pRtlDosPathNameToNtPathName_U_WithStatus( ((void*)0), &nameW, ((void*)0), ((void*)0) );
    ok(status == STATUS_OBJECT_NAME_INVALID || broken(status == STATUS_OBJECT_PATH_NOT_FOUND) ,
        "Unexpected status %#x.\n", status);

    status = pRtlDosPathNameToNtPathName_U_WithStatus( emptyW, &nameW, ((void*)0), ((void*)0) );
    ok(status == STATUS_OBJECT_NAME_INVALID || broken(status == STATUS_OBJECT_PATH_NOT_FOUND) ,
        "Unexpected status %#x.\n", status);

    RtlFreeUnicodeString( &nameW );
}
