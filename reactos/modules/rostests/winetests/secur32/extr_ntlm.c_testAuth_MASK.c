#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int UINT ;
struct TYPE_26__ {unsigned char* User; unsigned char* Domain; unsigned char* Password; int /*<<< orphan*/  Flags; void* PasswordLength; void* DomainLength; void* UserLength; } ;
struct TYPE_25__ {scalar_t__ NegotiationState; TYPE_3__* PackageInfo; } ;
struct TYPE_24__ {int cbMaxToken; int cbMaxSignature; int cbSecurityTrailer; scalar_t__ cbBlockSize; } ;
struct TYPE_23__ {int fCapabilities; int wVersion; scalar_t__ wRPCID; scalar_t__ Name; char* Comment; } ;
struct TYPE_21__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_22__ {int /*<<< orphan*/  cred; int /*<<< orphan*/  ctxt; TYPE_6__* id; TYPE_1__ member_0; } ;
typedef  TYPE_2__ SspiData ;
typedef  TYPE_3__ SecPkgInfoA ;
typedef  TYPE_4__ SecPkgContext_Sizes ;
typedef  TYPE_5__ SecPkgContext_NegotiationInfoA ;
typedef  TYPE_6__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/ * PSecPkgInfoA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int NTLM_BASE_CAPS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ RPC_C_AUTHN_WINNT ; 
 int /*<<< orphan*/  SECPKG_ATTR_NEGOTIATION_INFO ; 
 int /*<<< orphan*/  SECPKG_ATTR_SIZES ; 
 int SECPKG_FLAG_APPCONTAINER_CHECKS ; 
 int SECPKG_FLAG_READONLY_WITH_CHECKSUM ; 
 int SECPKG_FLAG_RESTRICTED_TOKENS ; 
 scalar_t__ SECPKG_NEGOTIATION_COMPLETE ; 
 scalar_t__ SEC_E_LOGON_DENIED ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  SEC_WINNT_AUTH_IDENTITY_ANSI ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC16 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sec_pkg_name ; 
 scalar_t__ FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 void* FUNC23 (char*) ; 
 scalar_t__ test_pass ; 
 scalar_t__ test_user ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 scalar_t__ workgroup ; 

__attribute__((used)) static void FUNC25(ULONG data_rep, BOOL fake)
{
    SECURITY_STATUS         client_stat = SEC_I_CONTINUE_NEEDED;
    SECURITY_STATUS         server_stat = SEC_I_CONTINUE_NEEDED;
    SECURITY_STATUS         sec_status;
    PSecPkgInfoA            pkg_info = NULL;
    BOOL                    first = TRUE;
    SspiData                client = {0}, server = {0};
    SEC_WINNT_AUTH_IDENTITY_A id;
    SecPkgContext_Sizes     ctxt_sizes;
    SecPkgContext_NegotiationInfoA info;
    SecPkgInfoA *pi;

    if(FUNC15( sec_pkg_name, &pkg_info)!= SEC_E_OK)
    {
        FUNC10(0, "NTLM package not installed, skipping test.\n");
        return;
    }

    FUNC12(pkg_info);
    id.User = (unsigned char*) test_user;
    id.UserLength = FUNC23((char *) id.User);
    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = FUNC23((char *) id.Domain);
    id.Password = (unsigned char*) test_pass;
    id.PasswordLength = FUNC23((char *) id.Password);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    client.id = &id;

    sec_status = FUNC19(&client, sec_pkg_name);

    if(sec_status != SEC_E_OK)
    {
        FUNC22("Error: Setting up the client returned %s, exiting test!\n",
                FUNC6(sec_status));
        FUNC13(&client.cred);
        return;
    }

    if(fake)
        sec_status = FUNC20(&server, sec_pkg_name);
    else
        sec_status = FUNC21(&server, sec_pkg_name);

    if(sec_status != SEC_E_OK)
    {
        FUNC22("Error: Setting up the server returned %s, exiting test!\n",
                FUNC6(sec_status));
        FUNC13(&server.cred);
        FUNC13(&client.cred);
        return;
    }

    while(client_stat == SEC_I_CONTINUE_NEEDED && server_stat == SEC_I_CONTINUE_NEEDED)
    {
        client_stat = FUNC16(&client, first, data_rep);

        FUNC10(client_stat == SEC_E_OK || client_stat == SEC_I_CONTINUE_NEEDED,
                "Running the client returned %s, more tests will fail.\n",
                FUNC6(client_stat));

        FUNC5(&client, &server);

        if(fake)
            server_stat = FUNC17(&server, first, data_rep);
        else
            server_stat = FUNC18(&server, first, data_rep);

        FUNC10(server_stat == SEC_E_OK || server_stat == SEC_I_CONTINUE_NEEDED ||
                server_stat == SEC_E_LOGON_DENIED,
                "Running the server returned %s, more tests will fail from now.\n",
                FUNC6(server_stat));

        FUNC5(&server, &client);
        FUNC24("Looping\n");
        first = FALSE;
    }

    if(client_stat != SEC_E_OK)
    {
        FUNC22("Authentication failed, skipping test.\n");
        goto tAuthend;
    }

    sec_status = FUNC14(&client.ctxt,
            SECPKG_ATTR_SIZES, &ctxt_sizes);

    FUNC10(sec_status == SEC_E_OK,
            "pQueryContextAttributesA(SECPKG_ATTR_SIZES) returned %s\n",
            FUNC6(sec_status));
    FUNC10((ctxt_sizes.cbMaxToken == 1904) || (ctxt_sizes.cbMaxToken == 2888),
            "cbMaxToken should be 1904 or 2888 but is %u\n",
            ctxt_sizes.cbMaxToken);
    FUNC10(ctxt_sizes.cbMaxSignature == 16,
            "cbMaxSignature should be 16 but is %u\n",
            ctxt_sizes.cbMaxSignature);
    FUNC10(ctxt_sizes.cbSecurityTrailer == 16,
            "cbSecurityTrailer should be 16 but is  %u\n",
            ctxt_sizes.cbSecurityTrailer);
    FUNC10(ctxt_sizes.cbBlockSize == 0,
            "cbBlockSize should be 0 but is %u\n",
            ctxt_sizes.cbBlockSize);

    FUNC9(&info, 0, sizeof(info));
    sec_status = FUNC3(&client.ctxt, SECPKG_ATTR_NEGOTIATION_INFO, &info);
    FUNC10(sec_status == SEC_E_OK, "QueryContextAttributesA returned %08x\n", sec_status);

    pi = info.PackageInfo;
    FUNC10(info.NegotiationState == SECPKG_NEGOTIATION_COMPLETE, "got %u\n", info.NegotiationState);
    FUNC10(pi != NULL, "expected non-NULL PackageInfo\n");
    if (pi)
    {
        UINT expected, got;
        char *eob;

        FUNC10(pi->fCapabilities == NTLM_BASE_CAPS ||
           pi->fCapabilities == (NTLM_BASE_CAPS|SECPKG_FLAG_READONLY_WITH_CHECKSUM) ||
           pi->fCapabilities == (NTLM_BASE_CAPS|SECPKG_FLAG_RESTRICTED_TOKENS) ||
           pi->fCapabilities == (NTLM_BASE_CAPS|SECPKG_FLAG_RESTRICTED_TOKENS|
                                 SECPKG_FLAG_APPCONTAINER_CHECKS),
           "got %08x\n", pi->fCapabilities);
        FUNC10(pi->wVersion == 1, "got %u\n", pi->wVersion);
        FUNC10(pi->wRPCID == RPC_C_AUTHN_WINNT, "got %u\n", pi->wRPCID);
        FUNC10(!FUNC7( pi->Name, "NTLM" ), "got %s\n", pi->Name);

        expected = sizeof(*pi) + FUNC8(pi->Name) + 1 + FUNC8(pi->Comment) + 1;
        got = FUNC2(FUNC1(), 0, pi);
        FUNC10(got == expected, "got %u, expected %u\n", got, expected);
        eob = (char *)pi + expected;
        FUNC10(pi->Name + FUNC8(pi->Name) < eob, "Name doesn't fit into allocated block\n");
        FUNC10(pi->Comment + FUNC8(pi->Comment) < eob, "Comment doesn't fit into allocated block\n");

        sec_status = FUNC0(pi);
        FUNC10(sec_status == SEC_E_OK, "FreeContextBuffer error %#x\n", sec_status);
    }

tAuthend:
    FUNC4(&client);
    FUNC4(&server);

    if(!fake)
    {
        sec_status = FUNC11(&server.ctxt);
        FUNC10(sec_status == SEC_E_OK, "DeleteSecurityContext(server) returned %s\n",
            FUNC6(sec_status));
    }

    sec_status = FUNC11(&client.ctxt);
    FUNC10(sec_status == SEC_E_OK, "DeleteSecurityContext(client) returned %s\n",
            FUNC6(sec_status));

    if(!fake)
    {
        sec_status = FUNC13(&server.cred);
        FUNC10(sec_status == SEC_E_OK, "FreeCredentialsHandle(server) returned %s\n",
            FUNC6(sec_status));
    }

    sec_status = FUNC13(&client.cred);
    FUNC10(sec_status == SEC_E_OK, "FreeCredentialsHandle(client) returned %s\n",
            FUNC6(sec_status));
}