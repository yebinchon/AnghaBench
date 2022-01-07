
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORDLONG ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_PATH_NOT_FOUND ;
 int GetDiskInfoA (char*,int*,int *,int *) ;
 int GetLastError () ;
 int GetSystemDirectoryA (char*,int) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 scalar_t__ old_ie ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_GetDiskInfoA(void)
{
    BOOL ret;
    DWORD error, cluster_size;
    DWORDLONG free, total;
    char path[MAX_PATH], *p;

    GetSystemDirectoryA(path, MAX_PATH);
    if ((p = strchr(path, '\\'))) *++p = 0;

    ret = GetDiskInfoA(path, &cluster_size, &free, &total);
    ok(ret, "GetDiskInfoA failed %u\n", GetLastError());

    ret = GetDiskInfoA(path, &cluster_size, &free, ((void*)0));
    ok(ret, "GetDiskInfoA failed %u\n", GetLastError());

    ret = GetDiskInfoA(path, &cluster_size, ((void*)0), ((void*)0));
    ok(ret, "GetDiskInfoA failed %u\n", GetLastError());

    ret = GetDiskInfoA(path, ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "GetDiskInfoA failed %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    strcpy(p, "\\non\\existing\\path");
    ret = GetDiskInfoA(path, ((void*)0), ((void*)0), ((void*)0));
    error = GetLastError();
    ok(!ret ||
       broken(old_ie && ret),
       "GetDiskInfoA succeeded\n");
    ok(error == ERROR_PATH_NOT_FOUND ||
       broken(old_ie && error == 0xdeadbeef),
       "got %u expected ERROR_PATH_NOT_FOUND\n", error);

    SetLastError(0xdeadbeef);
    ret = GetDiskInfoA(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    error = GetLastError();
    ok(!ret, "GetDiskInfoA succeeded\n");
    ok(error == ERROR_INVALID_PARAMETER, "got %u expected ERROR_INVALID_PARAMETER\n", error);
}
