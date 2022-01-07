
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hashInfo ;
struct TYPE_6__ {int pszObjId; } ;
struct TYPE_8__ {int cbSize; TYPE_1__ HashAlgorithm; int member_0; } ;
struct TYPE_7__ {int * member_2; int member_1; int member_0; } ;
typedef int * HCRYPTMSG ;
typedef TYPE_2__ CMSG_STREAM_INFO ;
typedef TYPE_3__ CMSG_HASHED_ENCODE_INFO ;


 int CMSG_DETACHED_FLAG ;
 int CMSG_HASHED ;
 scalar_t__ CRYPT_E_UNKNOWN_ALGO ;
 int CryptMsgClose (int *) ;
 int * CryptMsgOpenToEncode (int ,int ,int ,TYPE_3__*,int *,TYPE_2__*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int) ;
 int nop_stream_output ;
 int oid_rsa_md5 ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_hash_msg_open(void)
{
    HCRYPTMSG msg;
    CMSG_HASHED_ENCODE_INFO hashInfo = { 0 };
    CMSG_STREAM_INFO streamInfo = { 0, nop_stream_output, ((void*)0) };

    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, &hashInfo,
     ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    hashInfo.cbSize = sizeof(hashInfo);
    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, &hashInfo,
     ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == CRYPT_E_UNKNOWN_ALGO,
     "Expected CRYPT_E_UNKNOWN_ALGO, got %x\n", GetLastError());
    hashInfo.HashAlgorithm.pszObjId = oid_rsa_md5;
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, &hashInfo,
     ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, CMSG_DETACHED_FLAG,
     CMSG_HASHED, &hashInfo, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, CMSG_DETACHED_FLAG,
     CMSG_HASHED, &hashInfo, ((void*)0), &streamInfo);
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
}
