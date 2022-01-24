#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct authinfo {int data_len; char* data; int scheme; int max_token; void* finished; int /*<<< orphan*/  exp; int /*<<< orphan*/  attr; int /*<<< orphan*/  ctx; int /*<<< orphan*/  cred; } ;
typedef  int /*<<< orphan*/  auth_value ;
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_16__ {int* AuthnSchemes; TYPE_4__* TransportCredentials; } ;
struct TYPE_15__ {int /*<<< orphan*/  PasswordLength; int /*<<< orphan*/  Password; int /*<<< orphan*/  UserLength; int /*<<< orphan*/  User; } ;
struct TYPE_14__ {int cbBuffer; char* pvBuffer; void* BufferType; } ;
struct TYPE_13__ {int cBuffers; TYPE_3__* pBuffers; int /*<<< orphan*/  ulVersion; } ;
struct TYPE_12__ {int cbMaxToken; } ;
typedef  TYPE_1__ SecPkgInfoW ;
typedef  TYPE_2__ SecBufferDesc ;
typedef  TYPE_3__ SecBuffer ;
typedef  TYPE_4__ SEC_WINNT_AUTH_IDENTITY_W ;
typedef  char SEC_WCHAR ;
typedef  int /*<<< orphan*/  SECURITY_STATUS ;
typedef  scalar_t__ RPC_STATUS ;
typedef  TYPE_5__ RPC_HTTP_TRANSPORT_CREDENTIALS_W ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int DWORD ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int ISC_REQ_CONNECTION ; 
 int ISC_REQ_DELEGATE ; 
 int ISC_REQ_MUTUAL_AUTH ; 
 int ISC_REQ_USE_DCE_STYLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__**) ; 
#define  RPC_C_HTTP_AUTHN_SCHEME_BASIC 130 
#define  RPC_C_HTTP_AUTHN_SCHEME_NEGOTIATE 129 
#define  RPC_C_HTTP_AUTHN_SCHEME_NTLM 128 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_OUT_OF_MEMORY ; 
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ; 
 void* SECBUFFER_TOKEN ; 
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 int /*<<< orphan*/  SECURITY_NETWORK_DREP ; 
 int /*<<< orphan*/  SEC_E_OK ; 
 int /*<<< orphan*/  SEC_I_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* TRUE ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct authinfo* FUNC11 () ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int const,char*,int) ; 
 int FUNC16 (char const*) ; 

__attribute__((used)) static RPC_STATUS FUNC17(HINTERNET request, SEC_WCHAR *servername,
                                   const RPC_HTTP_TRANSPORT_CREDENTIALS_W *creds, struct authinfo **auth_ptr)
{
    struct authinfo *info = *auth_ptr;
    SEC_WINNT_AUTH_IDENTITY_W *id = creds->TransportCredentials;
    RPC_STATUS status = RPC_S_SERVER_UNAVAILABLE;

    if ((!info && !(info = FUNC11()))) return RPC_S_SERVER_UNAVAILABLE;

    switch (creds->AuthnSchemes[0])
    {
    case RPC_C_HTTP_AUTHN_SCHEME_BASIC:
    {
        int userlen = FUNC10(CP_UTF8, 0, id->User, id->UserLength, NULL, 0, NULL, NULL);
        int passlen = FUNC10(CP_UTF8, 0, id->Password, id->PasswordLength, NULL, 0, NULL, NULL);

        info->data_len = userlen + passlen + 1;
        if (!(info->data = FUNC5(FUNC4(), 0, info->data_len)))
        {
            status = RPC_S_OUT_OF_MEMORY;
            break;
        }
        FUNC10(CP_UTF8, 0, id->User, id->UserLength, info->data, userlen, NULL, NULL);
        info->data[userlen] = ':';
        FUNC10(CP_UTF8, 0, id->Password, id->PasswordLength, info->data + userlen + 1, passlen, NULL, NULL);

        info->scheme   = RPC_C_HTTP_AUTHN_SCHEME_BASIC;
        info->finished = TRUE;
        status = RPC_S_OK;
        break;
    }
    case RPC_C_HTTP_AUTHN_SCHEME_NTLM:
    case RPC_C_HTTP_AUTHN_SCHEME_NEGOTIATE:
    {

        static SEC_WCHAR ntlmW[] = {'N','T','L','M',0}, negotiateW[] = {'N','e','g','o','t','i','a','t','e',0};
        SECURITY_STATUS ret;
        SecBufferDesc out_desc, in_desc;
        SecBuffer out, in;
        ULONG flags = ISC_REQ_CONNECTION|ISC_REQ_USE_DCE_STYLE|ISC_REQ_MUTUAL_AUTH|ISC_REQ_DELEGATE;
        SEC_WCHAR *scheme;
        int scheme_len;
        const WCHAR *p;
        WCHAR auth_value[2048];
        DWORD size = sizeof(auth_value);
        BOOL first = FALSE;

        if (creds->AuthnSchemes[0] == RPC_C_HTTP_AUTHN_SCHEME_NTLM) scheme = ntlmW;
        else scheme = negotiateW;
        scheme_len = FUNC16( scheme );

        if (!*auth_ptr)
        {
            TimeStamp exp;
            SecPkgInfoW *pkg_info;

            ret = FUNC0(NULL, scheme, SECPKG_CRED_OUTBOUND, NULL, id, NULL, NULL, &info->cred, &exp);
            if (ret != SEC_E_OK) break;

            ret = FUNC8(scheme, &pkg_info);
            if (ret != SEC_E_OK) break;

            info->max_token = pkg_info->cbMaxToken;
            FUNC3(pkg_info);
            first = TRUE;
        }
        else
        {
            if (info->finished || !FUNC15(request, creds->AuthnSchemes[0], auth_value, size)) break;
            if (FUNC12(auth_value) != info->scheme)
            {
                FUNC1("authentication scheme changed\n");
                break;
            }
        }
        in.BufferType = SECBUFFER_TOKEN;
        in.cbBuffer   = 0;
        in.pvBuffer   = NULL;

        in_desc.ulVersion = 0;
        in_desc.cBuffers  = 1;
        in_desc.pBuffers  = &in;

        p = auth_value + scheme_len;
        if (!first && *p == ' ')
        {
            int len = FUNC16(++p);
            in.cbBuffer = FUNC13(p, len, NULL);
            if (!(in.pvBuffer = FUNC5(FUNC4(), 0, in.cbBuffer))) break;
            FUNC13(p, len, in.pvBuffer);
        }
        out.BufferType = SECBUFFER_TOKEN;
        out.cbBuffer   = info->max_token;
        if (!(out.pvBuffer = FUNC5(FUNC4(), 0, out.cbBuffer)))
        {
            FUNC6(FUNC4(), 0, in.pvBuffer);
            break;
        }
        out_desc.ulVersion = 0;
        out_desc.cBuffers  = 1;
        out_desc.pBuffers  = &out;

        ret = FUNC7(first ? &info->cred : NULL, first ? NULL : &info->ctx,
                                         first ? servername : NULL, flags, 0, SECURITY_NETWORK_DREP,
                                         in.pvBuffer ? &in_desc : NULL, 0, &info->ctx, &out_desc,
                                         &info->attr, &info->exp);
        FUNC6(FUNC4(), 0, in.pvBuffer);
        if (ret == SEC_E_OK)
        {
            FUNC6(FUNC4(), 0, info->data);
            info->data     = out.pvBuffer;
            info->data_len = out.cbBuffer;
            info->finished = TRUE;
            FUNC9("sending last auth packet\n");
            status = RPC_S_OK;
        }
        else if (ret == SEC_I_CONTINUE_NEEDED)
        {
            FUNC6(FUNC4(), 0, info->data);
            info->data     = out.pvBuffer;
            info->data_len = out.cbBuffer;
            FUNC9("sending next auth packet\n");
            status = RPC_S_OK;
        }
        else
        {
            FUNC1("InitializeSecurityContextW failed with error 0x%08x\n", ret);
            FUNC6(FUNC4(), 0, out.pvBuffer);
            break;
        }
        info->scheme = creds->AuthnSchemes[0];
        break;
    }
    default:
        FUNC2("scheme %u not supported\n", creds->AuthnSchemes[0]);
        break;
    }

    if (status != RPC_S_OK)
    {
        FUNC14(info);
        *auth_ptr = NULL;
        return status;
    }
    *auth_ptr = info;
    return RPC_S_OK;
}