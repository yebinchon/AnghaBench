
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDSKSPC ;
typedef int BOOL ;


 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int FILEOP_COPY ;
 int FILEOP_RENAME ;
 int GetLastError () ;
 int SetupAddToDiskSpaceListA (int *,char*,int,int ,int ,int ) ;
 int * SetupCreateDiskSpaceListA (int *,int ,int ) ;
 int SetupDestroyDiskSpaceList (int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SetupAddToDiskSpaceListA(void)
{
    HDSKSPC handle;
    BOOL ret;

    ret = SetupAddToDiskSpaceListA(((void*)0), "C:\\some-file.dat", 0, FILEOP_COPY, 0, 0);
    ok(!ret, "Expected SetupAddToDiskSpaceListA to return FALSE, got %d\n", ret);
    ok(GetLastError() == ERROR_INVALID_HANDLE,
       "Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\n", GetLastError());

    handle = SetupCreateDiskSpaceListA(((void*)0), 0, 0);
    ok(handle != ((void*)0),"Expected SetupCreateDiskSpaceListA to return a valid handle\n");

    ret = SetupAddToDiskSpaceListA(handle, ((void*)0), 0, FILEOP_COPY, 0, 0);
    ok(ret || broken(!ret) , "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = SetupAddToDiskSpaceListA(handle, "C:\\some-file.dat", -20, FILEOP_COPY, 0, 0);
    ok(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = SetupAddToDiskSpaceListA(handle, "C:\\some-file.dat", 0, FILEOP_RENAME, 0, 0);
    ok(!ret, "Expected SetupAddToDiskSpaceListA to return FALSE\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\n", GetLastError());

    ret = SetupAddToDiskSpaceListA(handle, ((void*)0), 0, FILEOP_RENAME, 0, 0);
    ok(ret || broken(!ret) , "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = SetupAddToDiskSpaceListA(((void*)0), ((void*)0), 0, FILEOP_RENAME, 0, 0);
    ok(ret || broken(!ret) , "Expected SetupAddToDiskSpaceListA to succeed\n");

    ok(SetupDestroyDiskSpaceList(handle),
       "Expected SetupDestroyDiskSpaceList to succeed\n");
}
