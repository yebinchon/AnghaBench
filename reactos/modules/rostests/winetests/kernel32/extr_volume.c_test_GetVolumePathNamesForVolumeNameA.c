
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume ;
typedef int buffer ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_NAME ;
 int ERROR_MORE_DATA ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 int pGetVolumeNameForVolumeMountPointA (char*,char*,int) ;
 int pGetVolumePathNamesForVolumeNameA (char*,char*,int,int*) ;
 int strcmp (char*,char*) ;
 int trace (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumePathNamesForVolumeNameA(void)
{
    BOOL ret;
    char volume[MAX_PATH], buffer[MAX_PATH];
    DWORD len, error;

    if (!pGetVolumePathNamesForVolumeNameA || !pGetVolumeNameForVolumeMountPointA)
    {
        win_skip("required functions not found\n");
        return;
    }

    ret = pGetVolumeNameForVolumeMountPointA( "c:\\", volume, sizeof(volume) );
    ok(ret, "failed to get volume name %u\n", GetLastError());
    trace("c:\\ -> %s\n", volume);

    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( ((void*)0), ((void*)0), 0, ((void*)0) );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( "", ((void*)0), 0, ((void*)0) );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( volume, ((void*)0), 0, ((void*)0) );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_MORE_DATA, "expected ERROR_MORE_DATA got %u\n", error);

    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( volume, buffer, 0, ((void*)0) );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_MORE_DATA, "expected ERROR_MORE_DATA got %u\n", error);

    memset( buffer, 0xff, sizeof(buffer) );
    ret = pGetVolumePathNamesForVolumeNameA( volume, buffer, sizeof(buffer), ((void*)0) );
    ok(ret, "failed to get path names %u\n", GetLastError());
    ok(!strcmp( "C:\\", buffer ), "expected \"\\C:\" got \"%s\"\n", buffer);
    ok(!buffer[4], "expected double null-terminated buffer\n");

    len = 0;
    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( ((void*)0), ((void*)0), 0, &len );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( ((void*)0), ((void*)0), sizeof(buffer), &len );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( ((void*)0), buffer, sizeof(buffer), &len );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    SetLastError( 0xdeadbeef );
    ret = pGetVolumePathNamesForVolumeNameA( ((void*)0), buffer, sizeof(buffer), &len );
    error = GetLastError();
    ok(!ret, "expected failure\n");
    ok(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    memset( buffer, 0xff, sizeof(buffer) );
    ret = pGetVolumePathNamesForVolumeNameA( volume, buffer, sizeof(buffer), &len );
    ok(ret, "failed to get path names %u\n", GetLastError());
    ok(len == 5 || broken(len == 2), "expected 5 got %u\n", len);
    ok(!strcmp( "C:\\", buffer ), "expected \"\\C:\" got \"%s\"\n", buffer);
    ok(!buffer[4], "expected double null-terminated buffer\n");
}
