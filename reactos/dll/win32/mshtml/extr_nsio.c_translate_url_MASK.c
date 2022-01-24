#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ nsWineURI ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  hostui; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  TYPE_2__ HTMLDocumentObj ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC9(HTMLDocumentObj *doc, nsWineURI *uri)
{
    OLECHAR *new_url = NULL;
    WCHAR *url;
    BOOL ret = FALSE;
    HRESULT hres;

    if(!doc->hostui || !FUNC7(uri))
        return FALSE;

    hres = FUNC4(uri->uri, &url);
    if(FUNC1(hres))
        return FALSE;

    hres = FUNC3(doc->hostui, 0, url, &new_url);
    if(hres == S_OK && new_url) {
        if(FUNC8(url, new_url)) {
            FUNC2("TranslateUrl returned new URL %s -> %s\n", FUNC6(url), FUNC6(new_url));
            ret = TRUE;
        }
        FUNC0(new_url);
    }

    FUNC5(url);
    return ret;
}