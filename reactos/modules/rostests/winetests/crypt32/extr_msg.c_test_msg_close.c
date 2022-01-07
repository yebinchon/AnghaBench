
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HCRYPTMSG ;
typedef int BOOL ;


 int CMSG_DATA ;
 int CryptMsgClose (int *) ;
 int * CryptMsgOpenToEncode (int ,int ,int ,int *,int *,int *) ;
 int GetLastError () ;
 int PKCS_7_ASN_ENCODING ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_msg_close(void)
{
    BOOL ret;
    HCRYPTMSG msg;


    ret = CryptMsgClose(((void*)0));
    ok(ret, "CryptMsgClose failed: %x\n", GetLastError());

    if (0)
        ret = CryptMsgClose((HCRYPTMSG)1);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, ((void*)0), ((void*)0),
     ((void*)0));
    ok(msg != ((void*)0), "CryptMsgOpenToEncode failed: %x\n", GetLastError());
    ret = CryptMsgClose(msg);
    ok(ret, "CryptMsgClose failed: %x\n", GetLastError());
}
