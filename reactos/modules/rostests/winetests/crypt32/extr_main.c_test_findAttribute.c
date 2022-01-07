
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* member_0; TYPE_1__* member_2; int member_1; } ;
struct TYPE_5__ {int member_0; int* member_1; } ;
typedef int * PCRYPT_ATTRIBUTE ;
typedef TYPE_1__ CRYPT_ATTR_BLOB ;
typedef TYPE_2__ CRYPT_ATTRIBUTE ;
typedef char CHAR ;
typedef int BYTE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int * CertFindAttribute (char*,int,TYPE_2__*) ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_findAttribute(void)
{
    PCRYPT_ATTRIBUTE ret;
    BYTE blobbin[] = {0x02,0x01,0x01};
    static CHAR oid[] = "1.2.3";
    CRYPT_ATTR_BLOB blobs[] = { { sizeof blobbin, blobbin }, };
    CRYPT_ATTRIBUTE attr = { oid, ARRAY_SIZE(blobs), blobs };


    SetLastError(0xdeadbeef);
    ret = CertFindAttribute(((void*)0), 0, ((void*)0));
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());
    if (0)
    {

        CertFindAttribute(((void*)0), 1, ((void*)0));



        SetLastError(0xdeadbeef);
        ret = CertFindAttribute(((void*)0), 1, &attr);
        ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
         "Expected ERROR_INVALID_PARAMETER, got %d (%08x)\n", GetLastError(),
         GetLastError());
    }

    SetLastError(0xdeadbeef);
    ret = CertFindAttribute("bogus", 1, &attr);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindAttribute("1.2.4", 1, &attr);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindAttribute("1.2.3", 1, &attr);
    ok(ret != ((void*)0), "CertFindAttribute failed: %08x\n", GetLastError());
}
