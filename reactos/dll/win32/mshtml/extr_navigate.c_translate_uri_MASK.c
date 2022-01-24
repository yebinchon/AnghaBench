#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {scalar_t__ hostui; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(HTMLOuterWindow *window, IUri *orig_uri, BSTR *ret_display_uri, IUri **ret_uri)
{
    IUri *uri = NULL;
    BSTR display_uri;
    HRESULT hres;

    hres = FUNC4(orig_uri, &display_uri);
    if(FUNC1(hres))
        return hres;

    if(window->doc_obj && window->doc_obj->hostui) {
        OLECHAR *translated_url = NULL;

        hres = FUNC2(window->doc_obj->hostui, 0, display_uri,
                &translated_url);
        if(hres == S_OK && translated_url) {
            FUNC7("%08x %s -> %s\n", hres, FUNC9(display_uri), FUNC9(translated_url));
            FUNC6(display_uri);
            hres = FUNC8(translated_url, 0, &uri);
            FUNC0(translated_url);
            if(FUNC1(hres))
                return hres;

            hres = FUNC4(uri, &display_uri);
            if(FUNC1(hres)) {
                FUNC5(uri);
                return hres;
            }
        }
    }

    if(!uri) {
        FUNC3(orig_uri);
        uri = orig_uri;
    }

    *ret_display_uri = display_uri;
    *ret_uri = uri;
    return S_OK;
}