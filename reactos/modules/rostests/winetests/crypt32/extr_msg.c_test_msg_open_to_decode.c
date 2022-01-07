
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef int * HCRYPTMSG ;
typedef TYPE_1__ CMSG_STREAM_INFO ;


 int CMSG_DATA ;
 int CMSG_ENCRYPTED ;
 int CMSG_ENVELOPED ;
 int CMSG_HASHED ;
 int CMSG_SIGNED ;
 int CMSG_SIGNED_AND_ENVELOPED ;
 int CryptMsgClose (int *) ;
 int * CryptMsgOpenToDecode (int ,int ,int,int ,int *,TYPE_1__*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int) ;
 int X509_ASN_ENCODING ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_msg_open_to_decode(void)
{
    HCRYPTMSG msg;
    CMSG_STREAM_INFO streamInfo = { 0 };

    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToDecode(0, 0, 0, 0, ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());


    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToDecode(X509_ASN_ENCODING, 0, 0, 0, ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToDecode(X509_ASN_ENCODING, 0, CMSG_DATA, 0, ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());


    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_ENVELOPED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_SIGNED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0,
     CMSG_SIGNED_AND_ENVELOPED, 0, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, 0, 0, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, 1000, 0, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);




    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, ((void*)0),
     &streamInfo);
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
}
