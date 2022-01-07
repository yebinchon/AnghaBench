
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int * HCRYPTMSG ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ CMSG_CMS_SIGNER_INFO_PARAM ;
 scalar_t__ CMSG_CONTENT_PARAM ;
 scalar_t__ CMSG_DATA ;
 scalar_t__ CMSG_ENCRYPTED ;
 scalar_t__ CMSG_ENVELOPED ;
 scalar_t__ CMSG_HASHED ;
 scalar_t__ CMSG_SIGNED ;
 scalar_t__ CMSG_TYPE_PARAM ;
 int CryptMsgClose (int *) ;
 int CryptMsgGetParam (int *,scalar_t__,int ,scalar_t__*,scalar_t__*) ;
 int * CryptMsgOpenToDecode (int ,int ,int,int ,int *,int *) ;
 scalar_t__ GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int ok (int,char*,scalar_t__) ;
 int old_crypt32 ;

__attribute__((used)) static void test_msg_get_param(void)
{
    BOOL ret;
    HCRYPTMSG msg;
    DWORD size, i, value;
    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, 0, 0, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());

    size = 0;
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, ((void*)0), &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());

    ok(value == 0, "Expected type 0, got %d\n", value);
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());

    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == CMSG_DATA, "Expected CMSG_DATA, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = CryptMsgGetParam(msg, i, 0, ((void*)0), &size);
        ok(!ret, "Parameter %d: expected failure\n", i);
    }
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_ENVELOPED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == CMSG_ENVELOPED, "Expected CMSG_ENVELOPED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = CryptMsgGetParam(msg, i, 0, ((void*)0), &size);
        ok(!ret, "Parameter %d: expected failure\n", i);
    }
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == CMSG_HASHED, "Expected CMSG_HASHED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = CryptMsgGetParam(msg, i, 0, ((void*)0), &size);
        ok(!ret, "Parameter %d: expected failure\n", i);
    }
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_SIGNED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == CMSG_SIGNED, "Expected CMSG_SIGNED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = CryptMsgGetParam(msg, i, 0, ((void*)0), &size);
        ok(!ret, "Parameter %d: expected failure\n", i);
    }
    CryptMsgClose(msg);


    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, 0, ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == CMSG_ENCRYPTED, "Expected CMSG_ENCRYPTED, got %d\n", value);
    CryptMsgClose(msg);

    msg = CryptMsgOpenToDecode(PKCS_7_ASN_ENCODING, 0, 1000, 0, ((void*)0), ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToDecode failed: %x\n", GetLastError());
    size = sizeof(value);
    ret = CryptMsgGetParam(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    ok(ret, "CryptMsgGetParam failed: %x\n", GetLastError());
    ok(value == 1000, "Expected 1000, got %d\n", value);
    CryptMsgClose(msg);
}
