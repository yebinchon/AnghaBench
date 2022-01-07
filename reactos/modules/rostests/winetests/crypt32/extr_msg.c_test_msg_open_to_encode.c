
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCRYPTMSG ;


 int CMSG_ENCRYPTED ;
 int CMSG_SIGNED_AND_ENVELOPED ;
 scalar_t__ CRYPT_E_INVALID_MSG_TYPE ;
 scalar_t__ CryptMsgOpenToEncode (int,int ,int ,int *,int *,int *) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int) ;
 int X509_ASN_ENCODING ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_msg_open_to_encode(void)
{
    HCRYPTMSG msg;
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(0, 0, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(X509_ASN_ENCODING, 0, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());


    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, 0, 0,
     ((void*)0), ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0,
     CMSG_SIGNED_AND_ENVELOPED, ((void*)0), ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, ((void*)0),
     ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
}
