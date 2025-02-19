
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int ULONG ;
typedef size_t UINT ;
typedef int BOOLEAN ;


 size_t ARRAY_SIZE (int*) ;
 scalar_t__ ERROR_CANT_ACCESS_DOMAIN_INFO ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NONE_MAPPED ;
 scalar_t__ ERROR_NO_SUCH_USER ;
 scalar_t__ GetLastError () ;

 int SetLastError (int) ;
 int* formats ;
 int ok (int,char*,int,...) ;
 int pGetComputerObjectNameA (int,char*,int*) ;
 int trace (char*,int,char*) ;

__attribute__((used)) static void testGetComputerObjectNameA(void)
{
    char name[256];
    ULONG size;
    BOOLEAN rc;
    UINT i;

    for (i = 0; i < ARRAY_SIZE(formats); i++) {
        size = 0;
        SetLastError(0xdeadbeef);
        rc = pGetComputerObjectNameA(formats[i], ((void*)0), &size);
        ok(!rc, "GetComputerObjectName(%u) should fail\n", formats[i]);
        switch (formats[i])
        {
        case 128:
            ok(GetLastError() == ERROR_INVALID_PARAMETER, "%u: got %u\n", formats[i], GetLastError());
            break;
        default:
            ok(GetLastError() == ERROR_NONE_MAPPED ||
               GetLastError() == ERROR_NO_SUCH_USER ||
               GetLastError() == ERROR_CANT_ACCESS_DOMAIN_INFO ||
               GetLastError() == ERROR_INSUFFICIENT_BUFFER,
               "%u: got %u\n", formats[i], GetLastError());
            break;
        }

        if (GetLastError() != ERROR_INSUFFICIENT_BUFFER) continue;

        size = sizeof(name);
        SetLastError(0xdeadbeef);
        rc = pGetComputerObjectNameA(formats[i], name, &size);
        switch (formats[i])
        {
        case 128:
            ok(!rc, "GetComputerObjectName(%u) should fail\n", formats[i]);
            ok(GetLastError() == ERROR_INVALID_PARAMETER, "%u: got %u\n", formats[i], GetLastError());
            break;
        default:
            ok(rc, "GetComputerObjectName(%u) error %u\n", formats[i], GetLastError());
            trace("GetComputerObjectName(%u) returned %s\n", formats[i], name);
            break;
        }
    }
}
