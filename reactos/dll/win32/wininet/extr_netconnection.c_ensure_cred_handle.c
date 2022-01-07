
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int grbitEnabledProtocols; int member_0; } ;
struct TYPE_5__ {int grbitProtocol; } ;
typedef TYPE_1__ SecPkgCred_SupportedProtocols ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_2__ SCHANNEL_CRED ;
typedef int BOOL ;


 scalar_t__ AcquireCredentialsHandleW (int *,int *,int ,int *,TYPE_2__*,int *,int *,int *,int *) ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ QueryCredentialsAttributesA (int *,int ,TYPE_1__*) ;
 int SCHANNEL_CRED_VERSION ;
 int SECPKG_ATTR_SUPPORTED_PROTOCOLS ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 int SP_PROT_TLS1_1PLUS_CLIENT ;
 int TRUE ;
 scalar_t__ UNISP_NAME_W ;
 int WARN (char*,scalar_t__) ;
 int compat_cred_handle ;
 int cred_handle ;
 int cred_handle_initialized ;
 int have_compat_cred_handle ;
 int init_sechandle_cs ;

__attribute__((used)) static BOOL ensure_cred_handle(void)
{
    SECURITY_STATUS res = SEC_E_OK;

    EnterCriticalSection(&init_sechandle_cs);

    if(!cred_handle_initialized) {
        SCHANNEL_CRED cred = {SCHANNEL_CRED_VERSION};
        SecPkgCred_SupportedProtocols prots;

        res = AcquireCredentialsHandleW(((void*)0), (WCHAR*)UNISP_NAME_W, SECPKG_CRED_OUTBOUND, ((void*)0), &cred,
                ((void*)0), ((void*)0), &cred_handle, ((void*)0));
        if(res == SEC_E_OK) {
            res = QueryCredentialsAttributesA(&cred_handle, SECPKG_ATTR_SUPPORTED_PROTOCOLS, &prots);
            if(res != SEC_E_OK || (prots.grbitProtocol & SP_PROT_TLS1_1PLUS_CLIENT)) {
                cred.grbitEnabledProtocols = prots.grbitProtocol & ~SP_PROT_TLS1_1PLUS_CLIENT;
                res = AcquireCredentialsHandleW(((void*)0), (WCHAR*)UNISP_NAME_W, SECPKG_CRED_OUTBOUND, ((void*)0), &cred,
                       ((void*)0), ((void*)0), &compat_cred_handle, ((void*)0));
                have_compat_cred_handle = res == SEC_E_OK;
            }
        }

        cred_handle_initialized = res == SEC_E_OK;
    }

    LeaveCriticalSection(&init_sechandle_cs);

    if(res != SEC_E_OK) {
        WARN("Failed: %08x\n", res);
        return FALSE;
    }

    return TRUE;
}
