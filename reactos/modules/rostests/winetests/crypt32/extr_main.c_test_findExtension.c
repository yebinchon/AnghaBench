
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int* member_1; } ;
struct TYPE_5__ {char* member_0; TYPE_1__ member_2; int member_1; } ;
typedef int * PCERT_EXTENSION ;
typedef char CHAR ;
typedef TYPE_2__ CERT_EXTENSION ;
typedef int BYTE ;


 int * CertFindExtension (char*,int,TYPE_2__*) ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_findExtension(void)
{
    PCERT_EXTENSION ret;
    static CHAR oid[] = "1.2.3";
    BYTE blobbin[] = {0x02,0x01,0x01};
    CERT_EXTENSION ext = { oid, TRUE, { sizeof blobbin, blobbin } };


    SetLastError(0xdeadbeef);
    ret = CertFindExtension(((void*)0), 0, ((void*)0));
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());
    if (0)
    {

        SetLastError(0xdeadbeef);
        CertFindExtension(((void*)0), 1, ((void*)0));



        SetLastError(0xdeadbeef);
        ret = CertFindExtension(((void*)0), 1, &ext);
        ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
         "Expected ERROR_INVALID_PARAMETER, got %d (%08x)\n", GetLastError(),
         GetLastError());
    }

    SetLastError(0xdeadbeef);
    ret = CertFindExtension("bogus", 1, &ext);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindExtension("1.2.4", 1, &ext);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindExtension("1.2.3", 1, &ext);
    ok(ret != ((void*)0), "CertFindExtension failed: %08x\n", GetLastError());
}
