#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * cf; int /*<<< orphan*/  urlmon; } ;
typedef  TYPE_1__ name_space ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PARSE_SCHEMA ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  session_cs ; 

IInternetProtocolInfo *FUNC11(LPCWSTR url)
{
    IInternetProtocolInfo *ret = NULL;
    IClassFactory *cf;
    name_space *ns;
    WCHAR schema[64];
    DWORD schema_len;
    HRESULT hres;

    hres = FUNC1(url, PARSE_SCHEMA, 0, schema, FUNC0(schema), &schema_len, 0);
    if(FUNC3(hres) || !schema_len)
        return NULL;

    FUNC2(&session_cs);

    ns = FUNC9(schema);
    if(ns && !ns->urlmon) {
        hres = FUNC5(ns->cf, &IID_IInternetProtocolInfo, (void**)&ret);
        if(FUNC3(hres))
            hres = FUNC4(ns->cf, NULL, &IID_IInternetProtocolInfo, (void**)&ret);
    }

    FUNC7(&session_cs);

    if(ns && FUNC8(hres))
        return ret;

    hres = FUNC10(schema, schema_len, NULL, &cf);
    if(FUNC3(hres))
        return NULL;

    hres = FUNC5(cf, &IID_IInternetProtocolInfo, (void**)&ret);
    if(FUNC3(hres))
        FUNC4(cf, NULL, &IID_IInternetProtocolInfo, (void**)&ret);
    FUNC6(cf);

    return ret;
}