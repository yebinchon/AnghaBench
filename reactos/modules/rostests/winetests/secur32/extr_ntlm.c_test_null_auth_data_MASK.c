#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  cbMaxToken; } ;
struct TYPE_12__ {int /*<<< orphan*/  pvBuffer; int /*<<< orphan*/  cbBuffer; int /*<<< orphan*/  BufferType; } ;
struct TYPE_11__ {TYPE_2__* pBuffers; int /*<<< orphan*/  cBuffers; int /*<<< orphan*/  ulVersion; } ;
typedef  TYPE_1__ SecBufferDesc ;
typedef  TYPE_2__ SecBuffer ;
typedef  int /*<<< orphan*/  SEC_CHAR ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  TYPE_3__* PSecPkgInfoA ;
typedef  TYPE_4__ CtxtHandle ;
typedef  int /*<<< orphan*/  CredHandle ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_REQ_CONNECTION ; 
 int /*<<< orphan*/  NameSamCompatible ; 
 int /*<<< orphan*/  SECBUFFER_TOKEN ; 
 int /*<<< orphan*/  SECBUFFER_VERSION ; 
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 int /*<<< orphan*/  SECURITY_NETWORK_DREP ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_CONTINUE_NEEDED ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_3__**) ; 

__attribute__((used)) static void FUNC14(void)
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

    if(FUNC13((SEC_CHAR *)"NTLM", &info) != SEC_E_OK)
    {
        FUNC6(0, "NTLM package not installed, skipping test\n");
        return;
    }

    status = FUNC7(NULL, (SEC_CHAR *)"NTLM", SECPKG_CRED_OUTBOUND,
                                        NULL, NULL, NULL, NULL, &cred, &ttl);
    FUNC6(status == SEC_E_OK, "AcquireCredentialsHandle() failed %s\n", FUNC5(status));

    buffers[0].cbBuffer = info->cbMaxToken;
    buffers[0].BufferType = SECBUFFER_TOKEN;
    buffers[0].pvBuffer = FUNC3(FUNC2(), 0, buffers[0].cbBuffer);

    buffer_desc.ulVersion = SECBUFFER_VERSION;
    buffer_desc.cBuffers = FUNC0(buffers);
    buffer_desc.pBuffers = buffers;

    size = sizeof(user);
    ret = FUNC11(NameSamCompatible, user, &size);
    FUNC6(ret, "GetUserNameExA failed %u\n", FUNC1());

    status = FUNC12(&cred, NULL, (SEC_CHAR *)user,
                                         ISC_REQ_CONNECTION, 0, SECURITY_NETWORK_DREP,
                                         NULL, 0, &ctx, &buffer_desc, &attr, &ttl);
    FUNC6(status == SEC_I_CONTINUE_NEEDED, "InitializeSecurityContextA failed %s\n", FUNC5(status));

    ret = FUNC8(&ctx);
    FUNC6(ret == SEC_E_OK, "DeleteSecurityContext failed with error 0x%x\n", ret);
    ret = FUNC10(&cred);
    FUNC6(ret == SEC_E_OK, "FreeCredentialsHandle failed with error 0x%x\n", ret);

    FUNC9(info);
    FUNC4(FUNC2(), 0, buffers[0].pvBuffer);
}