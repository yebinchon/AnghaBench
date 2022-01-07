
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bindf; int request; int protocol_sink; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef int IWindowForBindingUI ;
typedef int IServiceProvider ;
typedef int IID ;
typedef int IHttpSecurity ;
typedef TYPE_2__ HttpProtocol ;
typedef int * HWND ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int BINDF_NO_UI ;
 int ERR (char*) ;


 int ERROR_INTERNET_FORCE_RETRY ;


 int ERROR_INTERNET_INCORRECT_PASSWORD ;
 int ERROR_SUCCESS ;
 int E_ABORT ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int FIXME (char*,int) ;
 int FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS ;
 int FLAGS_ERROR_UI_FLAGS_GENERATE_DATA ;
 int FLAGS_ERROR_UI_FLAGS_NO_UI ;
 int IHttpSecurity_OnSecurityProblem (int *,int) ;
 int IHttpSecurity_Release (int *) ;
 int IID_IAuthenticate ;
 int IID_IHttpSecurity ;
 int IID_IServiceProvider ;
 int IID_IWindowForBindingUI ;
 int IInternetProtocolSink_QueryInterface (int ,int *,void**) ;
 int IServiceProvider_QueryService (int *,int *,int *,void**) ;
 int IServiceProvider_Release (int *) ;
 int IWindowForBindingUI_GetWindow (int *,int const*,int **) ;
 int IWindowForBindingUI_Release (int *) ;
 int InternetErrorDlg (int *,int ,int,int,int *) ;
 int RPC_E_RETRY ;
 int SECURITY_FLAG_IGNORE_CERT_CN_INVALID ;
 int SECURITY_FLAG_IGNORE_CERT_DATE_INVALID ;
 int SECURITY_FLAG_IGNORE_REVOCATION ;
 int SECURITY_FLAG_IGNORE_UNKNOWN_CA ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,...) ;
 scalar_t__ TRUE ;
 int internet_error_to_hres (int) ;
 scalar_t__ set_security_flag (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT handle_http_error(HttpProtocol *This, DWORD error)
{
    IServiceProvider *serv_prov;
    IWindowForBindingUI *wfb_ui;
    IHttpSecurity *http_security;
    BOOL security_problem;
    DWORD dlg_flags;
    HWND hwnd;
    DWORD res;
    HRESULT hres;

    TRACE("(%p %u)\n", This, error);

    switch(error) {
    case 133:
    case 134:
    case 136:
    case 137:
    case 135:
    case 138:
    case 128:
    case 132:
    case 129:
    case 131:
    case 130:
    case 139:
        security_problem = TRUE;
        break;
    default:
        security_problem = FALSE;
    }

    hres = IInternetProtocolSink_QueryInterface(This->base.protocol_sink, &IID_IServiceProvider,
                                                (void**)&serv_prov);
    if(FAILED(hres)) {
        ERR("Failed to get IServiceProvider.\n");
        return E_ABORT;
    }

    if(security_problem) {
        hres = IServiceProvider_QueryService(serv_prov, &IID_IHttpSecurity, &IID_IHttpSecurity,
                                             (void**)&http_security);
        if(SUCCEEDED(hres)) {
            hres = IHttpSecurity_OnSecurityProblem(http_security, error);
            IHttpSecurity_Release(http_security);

            TRACE("OnSecurityProblem returned %08x\n", hres);

            if(hres != S_FALSE)
            {
                BOOL res = FALSE;

                IServiceProvider_Release(serv_prov);

                if(hres == S_OK) {
                    if(error == 133)
                        res = set_security_flag(This, SECURITY_FLAG_IGNORE_CERT_DATE_INVALID);
                    else if(error == 134)
                        res = set_security_flag(This, SECURITY_FLAG_IGNORE_CERT_CN_INVALID);
                    else if(error == 135)
                        res = set_security_flag(This, SECURITY_FLAG_IGNORE_UNKNOWN_CA);

                    if(res)
                        return RPC_E_RETRY;

                    FIXME("Don't know how to ignore error %d\n", error);
                    return E_ABORT;
                }

                if(hres == E_ABORT)
                    return E_ABORT;
                if(hres == RPC_E_RETRY)
                    return RPC_E_RETRY;

                return internet_error_to_hres(error);
            }
        }
    }

    switch(error) {
    case 129:
        if(hres != S_FALSE) {

            set_security_flag(This, SECURITY_FLAG_IGNORE_REVOCATION);
            hres = RPC_E_RETRY;
            break;
        }

    default:
        hres = IServiceProvider_QueryService(serv_prov, &IID_IWindowForBindingUI, &IID_IWindowForBindingUI, (void**)&wfb_ui);
        if(SUCCEEDED(hres)) {
            const IID *iid_reason;

            if(security_problem)
                iid_reason = &IID_IHttpSecurity;
            else if(error == ERROR_INTERNET_INCORRECT_PASSWORD)
                iid_reason = &IID_IAuthenticate;
            else
                iid_reason = &IID_IWindowForBindingUI;

            hres = IWindowForBindingUI_GetWindow(wfb_ui, iid_reason, &hwnd);
            IWindowForBindingUI_Release(wfb_ui);
        }

        if(FAILED(hres)) hwnd = ((void*)0);

        dlg_flags = FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS | FLAGS_ERROR_UI_FLAGS_GENERATE_DATA;
        if(This->base.bindf & BINDF_NO_UI)
            dlg_flags |= FLAGS_ERROR_UI_FLAGS_NO_UI;

        res = InternetErrorDlg(hwnd, This->base.request, error, dlg_flags, ((void*)0));
        hres = res == ERROR_INTERNET_FORCE_RETRY || res == ERROR_SUCCESS ? RPC_E_RETRY : internet_error_to_hres(error);
    }

    IServiceProvider_Release(serv_prov);
    return hres;
}
