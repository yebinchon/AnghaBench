
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_5__ {int member_0; } ;
typedef int * HCRYPTMSG ;
typedef TYPE_1__ CMSG_STREAM_INFO ;
typedef TYPE_2__ CMSG_HASHED_ENCODE_INFO ;


 int CMSG_DATA ;
 int CMSG_DETACHED_FLAG ;
 int CryptMsgClose (int *) ;
 int * CryptMsgOpenToEncode (int ,int ,int ,TYPE_2__*,char*,TYPE_1__*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int SetLastError (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_data_msg_open(void)
{
    HCRYPTMSG msg;
    CMSG_HASHED_ENCODE_INFO hashInfo = { 0 };
    CMSG_STREAM_INFO streamInfo = { 0 };
    char oid[] = "1.2.3";


    SetLastError(0xdeadbeef);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, &hashInfo,
     ((void*)0), ((void*)0));
    ok(!msg && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", GetLastError());
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0), ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);


    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0), ((void*)0),
     &streamInfo);
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);


    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0), oid,
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);

    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, CMSG_DETACHED_FLAG,
     CMSG_DATA, ((void*)0), oid, ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);



    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, CMSG_DETACHED_FLAG,
     CMSG_DATA, ((void*)0), oid, &streamInfo);
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    CryptMsgClose(msg);
}
