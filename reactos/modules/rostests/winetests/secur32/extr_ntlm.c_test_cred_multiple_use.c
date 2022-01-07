
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_17__ {int member_0; } ;
struct TYPE_16__ {int cbMaxToken; } ;
struct TYPE_15__ {unsigned char* User; unsigned char* Domain; unsigned char* Password; int Flags; void* PasswordLength; void* DomainLength; void* UserLength; } ;
struct TYPE_14__ {int pvBuffer; int cbBuffer; int BufferType; } ;
struct TYPE_13__ {TYPE_2__* pBuffers; int cBuffers; int ulVersion; } ;
typedef TYPE_1__ SecBufferDesc ;
typedef TYPE_2__ SecBuffer ;
typedef TYPE_3__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_4__* PSecPkgInfoA ;
typedef TYPE_5__ CtxtHandle ;
typedef int CredHandle ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int ) ;
 int ISC_REQ_CONNECTION ;
 int SECBUFFER_TOKEN ;
 int SECBUFFER_VERSION ;
 int SECPKG_CRED_OUTBOUND ;
 int SECURITY_NETWORK_DREP ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int SEC_WINNT_AUTH_IDENTITY_ANSI ;
 scalar_t__ getSecError (scalar_t__) ;
 int ok (int,char*,...) ;
 scalar_t__ pAcquireCredentialsHandleA (int *,int ,int ,int *,TYPE_3__*,int *,int *,int *,int *) ;
 scalar_t__ pDeleteSecurityContext (TYPE_5__*) ;
 int pFreeContextBuffer (TYPE_4__*) ;
 scalar_t__ pFreeCredentialsHandle (int *) ;
 scalar_t__ pInitializeSecurityContextA (int *,int *,int *,int ,int ,int ,int *,int ,TYPE_5__*,TYPE_1__*,int *,int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int ,TYPE_4__**) ;
 int sec_pkg_name ;
 void* strlen (char*) ;
 scalar_t__ test_pass ;
 scalar_t__ test_user ;
 scalar_t__ workgroup ;

__attribute__((used)) static void test_cred_multiple_use(void)
{
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A id;
    PSecPkgInfoA pkg_info = ((void*)0);
    CredHandle cred;
    CtxtHandle ctxt1 = {0};
    CtxtHandle ctxt2 = {0};
    SecBufferDesc buffer_desc;
    SecBuffer buffers[1];
    ULONG ctxt_attr;
    TimeStamp ttl;

    if(pQuerySecurityPackageInfoA(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        ok(0, "NTLM package not installed, skipping test\n");
        return;
    }
    buffers[0].cbBuffer = pkg_info->cbMaxToken;
    buffers[0].BufferType = SECBUFFER_TOKEN;
    buffers[0].pvBuffer = HeapAlloc(GetProcessHeap(), 0, buffers[0].cbBuffer);

    pFreeContextBuffer(pkg_info);

    id.User = (unsigned char*) test_user;
    id.UserLength = strlen((char *) id.User);
    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = strlen((char *) id.Domain);
    id.Password = (unsigned char*) test_pass;
    id.PasswordLength = strlen((char *) id.Password);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));

    buffer_desc.ulVersion = SECBUFFER_VERSION;
    buffer_desc.cBuffers = ARRAY_SIZE(buffers);
    buffer_desc.pBuffers = buffers;

    ret = pInitializeSecurityContextA(&cred, ((void*)0), ((void*)0), ISC_REQ_CONNECTION,
            0, SECURITY_NETWORK_DREP, ((void*)0), 0, &ctxt1, &buffer_desc,
            &ctxt_attr, &ttl);
    ok(ret == SEC_I_CONTINUE_NEEDED, "InitializeSecurityContextA failed with error 0x%x\n", ret);

    ret = pInitializeSecurityContextA(&cred, ((void*)0), ((void*)0), ISC_REQ_CONNECTION,
            0, SECURITY_NETWORK_DREP, ((void*)0), 0, &ctxt2, &buffer_desc,
            &ctxt_attr, &ttl);
    ok(ret == SEC_I_CONTINUE_NEEDED, "Second InitializeSecurityContextA on cred handle failed with error 0x%x\n", ret);

    ret = pDeleteSecurityContext(&ctxt1);
    ok(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = pDeleteSecurityContext(&ctxt2);
    ok(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = pFreeCredentialsHandle(&cred);
    ok(ret == SEC_E_OK, "FreeCredentialsHandle failed with error 0x%x\n", ret);

    HeapFree(GetProcessHeap(), 0, buffers[0].pvBuffer);
}
