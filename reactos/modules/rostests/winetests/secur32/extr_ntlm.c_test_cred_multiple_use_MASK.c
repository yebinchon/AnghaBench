#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_17__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_16__ {int /*<<< orphan*/  cbMaxToken; } ;
struct TYPE_15__ {unsigned char* User; unsigned char* Domain; unsigned char* Password; int /*<<< orphan*/  Flags; void* PasswordLength; void* DomainLength; void* UserLength; } ;
struct TYPE_14__ {int /*<<< orphan*/  pvBuffer; int /*<<< orphan*/  cbBuffer; int /*<<< orphan*/  BufferType; } ;
struct TYPE_13__ {TYPE_2__* pBuffers; int /*<<< orphan*/  cBuffers; int /*<<< orphan*/  ulVersion; } ;
typedef  TYPE_1__ SecBufferDesc ;
typedef  TYPE_2__ SecBuffer ;
typedef  TYPE_3__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  TYPE_4__* PSecPkgInfoA ;
typedef  TYPE_5__ CtxtHandle ;
typedef  int /*<<< orphan*/  CredHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_REQ_CONNECTION ; 
 int /*<<< orphan*/  SECBUFFER_TOKEN ; 
 int /*<<< orphan*/  SECBUFFER_VERSION ; 
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 int /*<<< orphan*/  SECURITY_NETWORK_DREP ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  SEC_WINNT_AUTH_IDENTITY_ANSI ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  sec_pkg_name ; 
 void* FUNC12 (char*) ; 
 scalar_t__ test_pass ; 
 scalar_t__ test_user ; 
 scalar_t__ workgroup ; 

__attribute__((used)) static void FUNC13(void)
{
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A id;
    PSecPkgInfoA            pkg_info = NULL;
    CredHandle              cred;
    CtxtHandle              ctxt1 = {0};
    CtxtHandle              ctxt2 = {0};
    SecBufferDesc           buffer_desc;
    SecBuffer               buffers[1];
    ULONG                   ctxt_attr;
    TimeStamp               ttl;

    if(FUNC11(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        FUNC5(0, "NTLM package not installed, skipping test\n");
        return;
    }
    buffers[0].cbBuffer = pkg_info->cbMaxToken;
    buffers[0].BufferType = SECBUFFER_TOKEN;
    buffers[0].pvBuffer = FUNC2(FUNC1(), 0, buffers[0].cbBuffer);

    FUNC8(pkg_info);

    id.User = (unsigned char*) test_user;
    id.UserLength = FUNC12((char *) id.User);
    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = FUNC12((char *) id.Domain);
    id.Password = (unsigned char*) test_pass;
    id.PasswordLength = FUNC12((char *) id.Password);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = FUNC6(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC5(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC4(ret));

    buffer_desc.ulVersion = SECBUFFER_VERSION;
    buffer_desc.cBuffers = FUNC0(buffers);
    buffer_desc.pBuffers = buffers;

    ret = FUNC10(&cred, NULL, NULL, ISC_REQ_CONNECTION,
            0, SECURITY_NETWORK_DREP, NULL, 0, &ctxt1, &buffer_desc,
            &ctxt_attr, &ttl);
    FUNC5(ret == SEC_I_CONTINUE_NEEDED, "InitializeSecurityContextA failed with error 0x%x\n", ret);

    ret = FUNC10(&cred, NULL, NULL, ISC_REQ_CONNECTION,
            0, SECURITY_NETWORK_DREP, NULL, 0, &ctxt2, &buffer_desc,
            &ctxt_attr, &ttl);
    FUNC5(ret == SEC_I_CONTINUE_NEEDED, "Second InitializeSecurityContextA on cred handle failed with error 0x%x\n", ret);

    ret = FUNC7(&ctxt1);
    FUNC5(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = FUNC7(&ctxt2);
    FUNC5(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = FUNC9(&cred);
    FUNC5(ret == SEC_E_OK, "FreeCredentialsHandle failed with error 0x%x\n", ret);

    FUNC3(FUNC1(), 0, buffers[0].pvBuffer);
}