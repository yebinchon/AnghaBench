#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int post_data_len; int /*<<< orphan*/ * post_stream; int /*<<< orphan*/ * headers; int /*<<< orphan*/ * post_data; } ;
typedef  TYPE_6__ request_data_t ;
typedef  int /*<<< orphan*/  nsWineURI ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_17__ {TYPE_4__* inner_window; int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_19__ {TYPE_5__ base; TYPE_2__* doc_obj; } ;
struct TYPE_16__ {TYPE_3__* doc; } ;
struct TYPE_15__ {int /*<<< orphan*/  basedoc; } ;
struct TYPE_13__ {TYPE_7__* window; } ;
struct TYPE_14__ {TYPE_1__ basedoc; int /*<<< orphan*/  doc_object_service; scalar_t__ webbrowser; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_7__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BINDING_REFRESH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LOAD_FLAGS_NONE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,void*,int) ; 

__attribute__((used)) static HRESULT FUNC12(HTMLOuterWindow *window, IUri *uri, const WCHAR *display_uri, const request_data_t *request_data,
        DWORD flags)
{
    nsWineURI *nsuri;
    HRESULT hres;

    FUNC5("%s\n", FUNC7(display_uri));

    if(window->doc_obj && window->doc_obj->webbrowser) {
        DWORD post_data_len = request_data ? request_data->post_data_len : 0;
        void *post_data = post_data_len ? request_data->post_data : NULL;
        const WCHAR *headers = request_data ? request_data->headers : NULL;

        if(!(flags & BINDING_REFRESH)) {
            BSTR frame_name = NULL;
            BOOL cancel = FALSE;

            if(window != window->doc_obj->basedoc.window) {
                hres = FUNC2(&window->base.IHTMLWindow2_iface, &frame_name);
                if(FUNC0(hres))
                    return hres;
            }

            hres = FUNC1(window->doc_obj->doc_object_service, NULL, display_uri, 0x40,
                    frame_name, post_data, post_data_len ? post_data_len+1 : 0, headers, TRUE, &cancel);
            FUNC4(frame_name);
            if(FUNC3(hres) && cancel) {
                FUNC5("Navigation canceled\n");
                return S_OK;
            }
        }

        if(window == window->doc_obj->basedoc.window)
            return FUNC11(window, uri, flags, headers, post_data, post_data_len);
    }

    if(window->doc_obj && window == window->doc_obj->basedoc.window) {
        BOOL cancel;

        hres = FUNC8(&window->base.inner_window->doc->basedoc, display_uri, NULL, 0, &cancel);
        if(FUNC0(hres))
            return hres;

        if(cancel) {
            FUNC5("Navigation handled by hlink frame\n");
            return S_OK;
        }
    }

    hres = FUNC6(window, uri, &nsuri);
    if(FUNC0(hres))
        return hres;

    hres = FUNC9(window, nsuri, request_data ? request_data->post_stream : NULL, NULL, LOAD_FLAGS_NONE);
    FUNC10((nsISupports*)nsuri);
    return hres;
}