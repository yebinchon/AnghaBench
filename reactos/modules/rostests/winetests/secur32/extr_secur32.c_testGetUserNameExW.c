
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nameW ;
typedef int WCHAR ;
typedef int ULONG ;
typedef size_t UINT ;
typedef scalar_t__ BOOLEAN ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_NONE_MAPPED ;
 scalar_t__ ERROR_NO_SUCH_USER ;
 scalar_t__ GetLastError () ;
 scalar_t__ NameDnsDomain ;
 scalar_t__ NameSamCompatible ;
 scalar_t__ NameUnknown ;
 int ZeroMemory (int*,int) ;
 scalar_t__ broken (int) ;
 scalar_t__* formats ;
 int ok (int,char*,...) ;
 scalar_t__ pGetUserNameExW (scalar_t__,int*,int*) ;

__attribute__((used)) static void testGetUserNameExW(void)
{
    WCHAR nameW[256];
    ULONG size;
    BOOLEAN rc;
    UINT i;

    for (i = 0; i < ARRAY_SIZE(formats); i++) {
        size = sizeof(nameW);
        ZeroMemory(nameW, sizeof(nameW));
        rc = pGetUserNameExW(formats[i], nameW, &size);
        ok(rc ||
           (formats[i] == NameUnknown &&
            GetLastError() == ERROR_NO_SUCH_USER) ||
           GetLastError() == ERROR_NONE_MAPPED ||
           broken(formats[i] == NameDnsDomain &&
                  GetLastError() == ERROR_INVALID_PARAMETER),
           "GetUserNameExW(%d) failed: %d\n",
           formats[i], GetLastError());
    }

    if (0)
        pGetUserNameExW(NameSamCompatible, ((void*)0), ((void*)0));

    size = 0;
    rc = pGetUserNameExW(NameSamCompatible, ((void*)0), &size);
    ok(! rc && GetLastError() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, GetLastError());
    ok(size != 0, "Expected size to be set to required size\n");

    if (0)
    {

        pGetUserNameExW(NameSamCompatible, ((void*)0), &size);
    }

    size = 0;
    rc = pGetUserNameExW(NameSamCompatible, nameW, &size);
    ok(! rc && GetLastError() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, GetLastError());
    ok(size != 0, "Expected size to be set to required size\n");
    size = 1;
    nameW[0] = 0xff;
    rc = pGetUserNameExW(NameSamCompatible, nameW, &size);
    ok(! rc && GetLastError() == ERROR_MORE_DATA, "Expected fail with ERROR_MORE_DATA, got %d with %u\n", rc, GetLastError());
    ok(1 < size, "Expected size to be set to required size\n");
    ok(nameW[0] == (WCHAR) 0xff, "Expected unchanged buffer\n");
}
