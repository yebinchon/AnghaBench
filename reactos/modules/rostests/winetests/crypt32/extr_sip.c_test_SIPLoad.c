
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* pCryptSIPGetSignedDataMsg ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_8__ {int cbSize; void* pfGet; void* pfRemove; void* pfVerify; void* pfCreate; void* pfPut; } ;
typedef TYPE_2__ SIP_DISPATCH_INFO ;
typedef int HMODULE ;
typedef TYPE_3__ GUID ;
typedef int BOOL ;


 int CryptSIPLoad (TYPE_3__*,int,TYPE_2__*) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int SetLastError (int) ;
 scalar_t__ TRUST_E_SUBJECT_FORM_UNKNOWN ;
 void* funcCryptSIPCreateIndirectData ;
 void* funcCryptSIPGetSignedDataMsg ;
 void* funcCryptSIPPutSignedDataMsg ;
 void* funcCryptSIPRemoveSignedDataMsg ;
 void* funcCryptSIPVerifyIndirectData ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 int trace (char*) ;

__attribute__((used)) static void test_SIPLoad(void)
{
    BOOL ret;
    GUID subject;
    static GUID dummySubject = { 0xdeadbeef, 0xdead, 0xbeef, { 0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef }};
    static GUID unknown = { 0xC689AABA, 0x8E78, 0x11D0, { 0x8C,0x47,0x00,0xC0,0x4F,0xC2,0x95,0xEE }};
    static GUID unknown2 = { 0xDE351A43, 0x8E59, 0x11D0, { 0x8C,0x47,0x00,0xC0,0x4F,0xC2,0x95,0xEE }};

    static GUID unknown3 = { 0x000C10F1, 0x0000, 0x0000, { 0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x46 }};
    SIP_DISPATCH_INFO sdi;
    HMODULE hCrypt;


    SetLastError(0xdeadbeef);
    ret = CryptSIPLoad(((void*)0), 0, ((void*)0));
    ok ( !ret, "Expected CryptSIPLoad to fail\n");
    ok ( GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got 0x%08x\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = CryptSIPLoad(&subject, 0, ((void*)0));
    ok ( !ret, "Expected CryptSIPLoad to fail\n");
    ok ( GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got 0x%08x\n", GetLastError());


    SetLastError(0xdeadbeef);
    memset(&sdi, 0, sizeof(SIP_DISPATCH_INFO));
    sdi.cbSize = sizeof(SIP_DISPATCH_INFO);
    sdi.pfGet = (pCryptSIPGetSignedDataMsg)0xdeadbeef;
    ret = CryptSIPLoad(&dummySubject, 0, &sdi);
    ok ( !ret, "Expected CryptSIPLoad to fail\n");
    ok ( GetLastError() == TRUST_E_SUBJECT_FORM_UNKNOWN,
        "Expected TRUST_E_SUBJECT_FORM_UNKNOWN, got 0x%08x\n", GetLastError());
    ok( sdi.pfGet == (pCryptSIPGetSignedDataMsg)0xdeadbeef, "Expected no change to the function pointer\n");

    hCrypt = GetModuleHandleA("crypt32.dll");
    funcCryptSIPGetSignedDataMsg = (void*)GetProcAddress(hCrypt, "CryptSIPGetSignedDataMsg");
    funcCryptSIPPutSignedDataMsg = (void*)GetProcAddress(hCrypt, "CryptSIPPutSignedDataMsg");
    funcCryptSIPCreateIndirectData = (void*)GetProcAddress(hCrypt, "CryptSIPCreateIndirectData");
    funcCryptSIPVerifyIndirectData = (void*)GetProcAddress(hCrypt, "CryptSIPVerifyIndirectData");
    funcCryptSIPRemoveSignedDataMsg = (void*)GetProcAddress(hCrypt, "CryptSIPRemoveSignedDataMsg");


    SetLastError(0xdeadbeef);
    memset(&sdi, 0, sizeof(SIP_DISPATCH_INFO));
    sdi.cbSize = sizeof(SIP_DISPATCH_INFO);
    sdi.pfGet = (pCryptSIPGetSignedDataMsg)0xdeadbeef;
    ret = CryptSIPLoad(&unknown, 0, &sdi);
    ok ( ret, "Expected CryptSIPLoad to succeed\n");





    ok( sdi.pfGet != (pCryptSIPGetSignedDataMsg)0xdeadbeef, "Expected a function pointer to be loaded.\n");






    if (funcCryptSIPGetSignedDataMsg && funcCryptSIPPutSignedDataMsg && funcCryptSIPCreateIndirectData &&
        funcCryptSIPVerifyIndirectData && funcCryptSIPRemoveSignedDataMsg)
        ok (sdi.pfGet == funcCryptSIPGetSignedDataMsg &&
            sdi.pfPut == funcCryptSIPPutSignedDataMsg &&
            sdi.pfCreate == funcCryptSIPCreateIndirectData &&
            sdi.pfVerify == funcCryptSIPVerifyIndirectData &&
            sdi.pfRemove == funcCryptSIPRemoveSignedDataMsg,
            "Expected function addresses to be from crypt32\n");
    else
        trace("Couldn't load function pointers\n");


    SetLastError(0xdeadbeef);
    memset(&sdi, 0, sizeof(SIP_DISPATCH_INFO));
    sdi.cbSize = sizeof(SIP_DISPATCH_INFO);
    sdi.pfGet = (pCryptSIPGetSignedDataMsg)0xdeadbeef;
    ret = CryptSIPLoad(&unknown2, 0, &sdi);
    ok ( ret, "Expected CryptSIPLoad to succeed\n");




    ok( sdi.pfGet != (pCryptSIPGetSignedDataMsg)0xdeadbeef, "Expected a function pointer to be loaded.\n");


    SetLastError(0xdeadbeef);
    memset(&sdi, 0, sizeof(SIP_DISPATCH_INFO));
    sdi.cbSize = sizeof(SIP_DISPATCH_INFO);
    sdi.pfGet = (pCryptSIPGetSignedDataMsg)0xdeadbeef;
    ret = CryptSIPLoad(&unknown3, 0, &sdi);
    if (ret)
    {





        ok( sdi.pfGet != (pCryptSIPGetSignedDataMsg)0xdeadbeef, "Expected a function pointer to be loaded.\n");




        if (funcCryptSIPGetSignedDataMsg && funcCryptSIPPutSignedDataMsg && funcCryptSIPCreateIndirectData &&
            funcCryptSIPVerifyIndirectData && funcCryptSIPRemoveSignedDataMsg)
            ok (sdi.pfGet == funcCryptSIPGetSignedDataMsg &&
                sdi.pfPut == funcCryptSIPPutSignedDataMsg &&
                sdi.pfCreate == funcCryptSIPCreateIndirectData &&
                sdi.pfVerify == funcCryptSIPVerifyIndirectData &&
                sdi.pfRemove == funcCryptSIPRemoveSignedDataMsg,
                "Expected function addresses to be from crypt32\n");
        else
            trace("Couldn't load function pointers\n");
    }


    SetLastError(0xdeadbeef);
    memset(&sdi, 0, sizeof(SIP_DISPATCH_INFO));
    sdi.cbSize = sizeof(SIP_DISPATCH_INFO);
    sdi.pfGet = (pCryptSIPGetSignedDataMsg)0xdeadbeef;
    ret = CryptSIPLoad(&unknown, 1, &sdi);
    ok ( !ret, "Expected CryptSIPLoad to fail\n");
    ok ( GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got 0x%08x\n", GetLastError());
    ok( sdi.pfGet == (pCryptSIPGetSignedDataMsg)0xdeadbeef, "Expected no change to the function pointer\n");
}
