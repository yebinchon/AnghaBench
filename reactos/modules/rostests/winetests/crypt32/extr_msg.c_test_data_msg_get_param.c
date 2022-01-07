
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_2; int member_1; int member_0; } ;
typedef int HCRYPTMSG ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CMSG_STREAM_INFO ;
typedef int BOOL ;


 int CMSG_BARE_CONTENT_PARAM ;
 int CMSG_COMPUTED_HASH_PARAM ;
 int CMSG_CONTENT_PARAM ;
 int CMSG_DATA ;
 int CMSG_ENCODED_SIGNER ;
 int CMSG_TYPE_PARAM ;
 scalar_t__ CRYPT_E_INVALID_MSG_TYPE ;
 int CryptMsgClose (int ) ;
 int CryptMsgGetParam (int ,int ,int ,int *,scalar_t__*) ;
 int CryptMsgOpenToEncode (int ,int ,int ,int *,int *,TYPE_1__*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int nop_stream_output ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_data_msg_get_param(void)
{
    HCRYPTMSG msg;
    DWORD size;
    BOOL ret;
    CMSG_STREAM_INFO streamInfo = { 0, nop_stream_output, ((void*)0) };

    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0), ((void*)0),
     ((void*)0));


    size = 0;
    ret = CryptMsgGetParam(msg, CMSG_CONTENT_PARAM, 0, ((void*)0), &size);
    ok(ret, "CryptMsgGetParam failed: %08x\n", GetLastError());
    size = 0;
    ret = CryptMsgGetParam(msg, CMSG_BARE_CONTENT_PARAM, 0, ((void*)0), &size);
    ok(ret, "CryptMsgGetParam failed: %08x\n", GetLastError());



    size = 0;
    SetLastError(0xdeadbeef);
    ret = CryptMsgGetParam(msg, CMSG_ENCODED_SIGNER, 0, ((void*)0), &size);
    ok(!ret && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = CryptMsgGetParam(msg, CMSG_COMPUTED_HASH_PARAM, 0, ((void*)0), &size);
    ok(!ret && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, ((void*)0), &size);
    ok(!ret && GetLastError() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", GetLastError());
    CryptMsgClose(msg);


    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0),
     ((void*)0), &streamInfo);
    SetLastError(0xdeadbeef);
    ret = CryptMsgGetParam(msg, CMSG_BARE_CONTENT_PARAM, 0, ((void*)0), &size);
    ok((!ret && GetLastError() == E_INVALIDARG) || broken(ret ),
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = CryptMsgGetParam(msg, CMSG_CONTENT_PARAM, 0, ((void*)0), &size);
    ok((!ret && GetLastError() == E_INVALIDARG) || broken(ret ),
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    CryptMsgClose(msg);
}
