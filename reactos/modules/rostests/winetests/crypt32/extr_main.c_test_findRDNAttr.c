
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* member_0; TYPE_2__* member_1; } ;
struct TYPE_8__ {int member_0; int* member_1; } ;
struct TYPE_9__ {char* member_0; struct TYPE_9__* member_1; TYPE_1__ member_2; } ;
typedef int * PCERT_RDN_ATTR ;
typedef char CHAR ;
typedef TYPE_2__ CERT_RDN_ATTR ;
typedef TYPE_2__ CERT_RDN ;
typedef TYPE_4__ CERT_NAME_INFO ;
typedef int BYTE ;


 char* ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* CERT_RDN_IA5_STRING ;
 int * CertFindRDNAttr (char*,TYPE_4__*) ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_findRDNAttr(void)
{
    PCERT_RDN_ATTR ret;
    static CHAR oid[] = "1.2.3";
    BYTE bin[] = { 0x16,0x09,'J','u','a','n',' ','L','a','n','g' };
    CERT_RDN_ATTR attrs[] = {
     { oid, CERT_RDN_IA5_STRING, { sizeof bin, bin } },
    };
    CERT_RDN rdns[] = { { ARRAY_SIZE(attrs), attrs } };
    CERT_NAME_INFO nameInfo = { ARRAY_SIZE(rdns), rdns };

    if (0)
    {

        SetLastError(0xdeadbeef);
        CertFindRDNAttr(((void*)0), ((void*)0));



        SetLastError(0xdeadbeef);
        ret = CertFindRDNAttr(((void*)0), &nameInfo);
        ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
         "Expected ERROR_INVALID_PARAMETER, got %d (%08x)\n", GetLastError(),
         GetLastError());
    }

    SetLastError(0xdeadbeef);
    ret = CertFindRDNAttr("bogus", &nameInfo);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindRDNAttr("1.2.4", &nameInfo);
    ok(ret == ((void*)0), "Expected failure\n");
    ok(GetLastError() == 0xdeadbeef, "Last error was set to %08x\n",
     GetLastError());

    SetLastError(0xdeadbeef);
    ret = CertFindRDNAttr("1.2.3", &nameInfo);
    ok(ret != ((void*)0), "CertFindRDNAttr failed: %08x\n", GetLastError());
}
