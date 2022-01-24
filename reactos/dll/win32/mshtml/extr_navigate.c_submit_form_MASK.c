#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ request_data_t ;
typedef  int /*<<< orphan*/  nsIInputStream ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  readystate_locked; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int BINDING_NAVIGATED ; 
 int BINDING_SUBMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC9(HTMLOuterWindow *window, const WCHAR *target, IUri *submit_uri, nsIInputStream *post_stream)
{
    request_data_t request_data = {NULL};
    HRESULT hres;

    hres = FUNC6(post_stream, TRUE, NULL, &request_data);
    if(FUNC0(hres))
        return hres;

    if(window) {
        IUri *uri;
        BSTR display_uri;

        window->readystate_locked++;

        hres = FUNC8(window, submit_uri, &display_uri, &uri);
        if(FUNC2(hres)) {
            hres = FUNC5(window, uri, display_uri, &request_data, BINDING_NAVIGATED|BINDING_SUBMIT);
            FUNC1(uri);
            FUNC3(display_uri);
        }

        window->readystate_locked--;
    }else
        hres = FUNC4(window, submit_uri, target, &request_data, NULL);

    FUNC7(&request_data);
    return hres;
}