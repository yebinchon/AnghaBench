
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwVersion; scalar_t__ Reserved3; scalar_t__ EncryptMessage; scalar_t__ Reserved4; scalar_t__ DecryptMessage; int Reserved2; } ;
struct TYPE_5__ {scalar_t__ dwVersion; scalar_t__ Reserved3; scalar_t__ EncryptMessage; scalar_t__ Reserved4; scalar_t__ DecryptMessage; int Reserved2; } ;
typedef TYPE_1__* PSecurityFunctionTableW ;
typedef TYPE_2__* PSecurityFunctionTableA ;


 scalar_t__ SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION ;
 int ok (int,char*,...) ;
 TYPE_2__* pInitSecurityInterfaceA () ;
 TYPE_1__* pInitSecurityInterfaceW () ;
 int win_skip (char*) ;

__attribute__((used)) static void test_InitSecurityInterface(void)
{
    PSecurityFunctionTableA sftA;
    PSecurityFunctionTableW sftW;

    sftA = pInitSecurityInterfaceA();
    ok(sftA != ((void*)0), "pInitSecurityInterfaceA failed\n");
    ok(sftA->dwVersion == SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION, "wrong dwVersion %d in security function table\n", sftA->dwVersion);
    ok(!sftA->Reserved2,
       "Reserved2 should be NULL instead of %p in security function table\n",
       sftA->Reserved2);
    ok(sftA->Reserved3 == sftA->EncryptMessage,
       "Reserved3 should be equal to EncryptMessage in the security function table\n");
    ok(sftA->Reserved4 == sftA->DecryptMessage,
       "Reserved4 should be equal to DecryptMessage in the security function table\n");

    if (!pInitSecurityInterfaceW)
    {
        win_skip("InitSecurityInterfaceW not exported by secur32.dll\n");
        return;
    }

    sftW = pInitSecurityInterfaceW();
    ok(sftW != ((void*)0), "pInitSecurityInterfaceW failed\n");
    ok(sftW->dwVersion == SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION, "wrong dwVersion %d in security function table\n", sftW->dwVersion);
    ok(!sftW->Reserved2, "Reserved2 should be NULL instead of %p in security function table\n", sftW->Reserved2);
    ok(sftW->Reserved3 == sftW->EncryptMessage, "Reserved3 should be equal to EncryptMessage in the security function table\n");
    ok(sftW->Reserved4 == sftW->DecryptMessage, "Reserved4 should be equal to DecryptMessage in the security function table\n");
}
