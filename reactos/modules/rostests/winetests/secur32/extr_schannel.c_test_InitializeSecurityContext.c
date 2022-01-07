
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int dwFlags; int grbitEnabledProtocols; } ;
struct TYPE_9__ {int member_0; int pvBuffer; int * member_2; int member_1; } ;
struct TYPE_8__ {int member_1; TYPE_2__* member_2; int member_0; } ;
typedef TYPE_1__ SecBufferDesc ;
typedef TYPE_2__ SecBuffer ;
typedef int SEC_CHAR ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_3__ SCHANNEL_CRED ;
typedef int CtxtHandle ;
typedef int CredHandle ;


 scalar_t__ AcquireCredentialsHandleA (int *,int *,int ,int *,TYPE_3__*,int *,int *,int *,int *) ;
 int DeleteSecurityContext (int *) ;
 int FreeContextBuffer (int ) ;
 int FreeCredentialsHandle (int *) ;
 int ISC_REQ_ALLOCATE_MEMORY ;
 int ISC_REQ_CONFIDENTIALITY ;
 int ISC_REQ_STREAM ;
 scalar_t__ InitializeSecurityContextA (int *,int *,int *,int,int ,int ,TYPE_1__*,int ,int *,TYPE_1__*,int *,int *) ;
 int SCH_CRED_MANUAL_CRED_VALIDATION ;
 int SCH_CRED_NO_DEFAULT_CREDS ;
 int SECBUFFER_EMPTY ;
 int SECBUFFER_TOKEN ;
 int SECBUFFER_VERSION ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int SP_PROT_TLS1_CLIENT ;
 scalar_t__ UNISP_NAME_A ;
 int init_cred (TYPE_3__*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_InitializeSecurityContext(void)
{
    SCHANNEL_CRED cred;
    CredHandle cred_handle;
    CtxtHandle context;
    SECURITY_STATUS status;
    SecBuffer out_buffer = {1000, SECBUFFER_TOKEN, ((void*)0)};
    SecBuffer in_buffer = {0, SECBUFFER_EMPTY, ((void*)0)};
    SecBufferDesc out_buffers = {SECBUFFER_VERSION, 1, &out_buffer};
    SecBufferDesc in_buffers = {SECBUFFER_VERSION, 1, &in_buffer};
    ULONG attrs;

    init_cred(&cred);
    cred.grbitEnabledProtocols = SP_PROT_TLS1_CLIENT;
    cred.dwFlags = SCH_CRED_NO_DEFAULT_CREDS|SCH_CRED_MANUAL_CRED_VALIDATION;
    status = AcquireCredentialsHandleA(((void*)0), (SEC_CHAR *)UNISP_NAME_A, SECPKG_CRED_OUTBOUND, ((void*)0),
        &cred, ((void*)0), ((void*)0), &cred_handle, ((void*)0));
    ok(status == SEC_E_OK, "AcquireCredentialsHandleA failed: %08x\n", status);
    if (status != SEC_E_OK) return;

    status = InitializeSecurityContextA(&cred_handle, ((void*)0), (SEC_CHAR *)"localhost",
        ISC_REQ_CONFIDENTIALITY|ISC_REQ_STREAM|ISC_REQ_ALLOCATE_MEMORY,
        0, 0, &in_buffers, 0, &context, &out_buffers, &attrs, ((void*)0));
    ok(status == SEC_I_CONTINUE_NEEDED, "Expected SEC_I_CONTINUE_NEEDED, got %08x\n", status);

    FreeContextBuffer(out_buffer.pvBuffer);
    DeleteSecurityContext(&context);
    FreeCredentialsHandle(&cred_handle);
}
