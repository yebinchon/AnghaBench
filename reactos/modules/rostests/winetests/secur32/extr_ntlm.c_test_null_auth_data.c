
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int user ;
typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_13__ {int cbMaxToken; } ;
struct TYPE_12__ {int pvBuffer; int cbBuffer; int BufferType; } ;
struct TYPE_11__ {TYPE_2__* pBuffers; int cBuffers; int ulVersion; } ;
typedef TYPE_1__ SecBufferDesc ;
typedef TYPE_2__ SecBuffer ;
typedef int SEC_CHAR ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_3__* PSecPkgInfoA ;
typedef TYPE_4__ CtxtHandle ;
typedef int CredHandle ;
typedef scalar_t__ BOOLEAN ;


 int ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int ) ;
 int ISC_REQ_CONNECTION ;
 int NameSamCompatible ;
 int SECBUFFER_TOKEN ;
 int SECBUFFER_VERSION ;
 int SECPKG_CRED_OUTBOUND ;
 int SECURITY_NETWORK_DREP ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 scalar_t__ getSecError (scalar_t__) ;
 int ok (int,char*,...) ;
 scalar_t__ pAcquireCredentialsHandleA (int *,int *,int ,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ pDeleteSecurityContext (TYPE_4__*) ;
 int pFreeContextBuffer (TYPE_3__*) ;
 scalar_t__ pFreeCredentialsHandle (int *) ;
 scalar_t__ pGetUserNameExA (int ,char*,int*) ;
 scalar_t__ pInitializeSecurityContextA (int *,int *,int *,int ,int ,int ,int *,int ,TYPE_4__*,TYPE_1__*,int*,int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int *,TYPE_3__**) ;

__attribute__((used)) static void test_null_auth_data(void)
{
    SECURITY_STATUS status;
    PSecPkgInfoA info;
    CredHandle cred;
    CtxtHandle ctx = {0};
    SecBufferDesc buffer_desc;
    SecBuffer buffers[1];
    char user[256];
    TimeStamp ttl;
    ULONG attr, size;
    BOOLEAN ret;

    if(pQuerySecurityPackageInfoA((SEC_CHAR *)"NTLM", &info) != SEC_E_OK)
    {
        ok(0, "NTLM package not installed, skipping test\n");
        return;
    }

    status = pAcquireCredentialsHandleA(((void*)0), (SEC_CHAR *)"NTLM", SECPKG_CRED_OUTBOUND,
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cred, &ttl);
    ok(status == SEC_E_OK, "AcquireCredentialsHandle() failed %s\n", getSecError(status));

    buffers[0].cbBuffer = info->cbMaxToken;
    buffers[0].BufferType = SECBUFFER_TOKEN;
    buffers[0].pvBuffer = HeapAlloc(GetProcessHeap(), 0, buffers[0].cbBuffer);

    buffer_desc.ulVersion = SECBUFFER_VERSION;
    buffer_desc.cBuffers = ARRAY_SIZE(buffers);
    buffer_desc.pBuffers = buffers;

    size = sizeof(user);
    ret = pGetUserNameExA(NameSamCompatible, user, &size);
    ok(ret, "GetUserNameExA failed %u\n", GetLastError());

    status = pInitializeSecurityContextA(&cred, ((void*)0), (SEC_CHAR *)user,
                                         ISC_REQ_CONNECTION, 0, SECURITY_NETWORK_DREP,
                                         ((void*)0), 0, &ctx, &buffer_desc, &attr, &ttl);
    ok(status == SEC_I_CONTINUE_NEEDED, "InitializeSecurityContextA failed %s\n", getSecError(status));

    ret = pDeleteSecurityContext(&ctx);
    ok(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = pFreeCredentialsHandle(&cred);
    ok(ret == SEC_E_OK, "FreeCredentialsHandle failed with error 0x%x\n", ret);

    pFreeContextBuffer(info);
    HeapFree(GetProcessHeap(), 0, buffers[0].pvBuffer);
}
