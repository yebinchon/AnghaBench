#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUriBuilder ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Uri_HAS_FRAGMENT ; 
 int /*<<< orphan*/  Uri_PROPERTY_FRAGMENT ; 

IUri *FUNC8(IUri *uri)
{
    IUriBuilder *uri_builder;
    IUri *ret;
    BOOL b;
    HRESULT hres;

    hres = FUNC6(uri, Uri_PROPERTY_FRAGMENT, &b);
    if(FUNC7(hres) && !b) {
        FUNC5(uri);
        return uri;
    }

    hres = FUNC0(uri, 0, 0, &uri_builder);
    if(FUNC1(hres))
        return NULL;

    hres = FUNC4(uri_builder, Uri_HAS_FRAGMENT);
    if(FUNC7(hres))
        hres = FUNC2(uri_builder, 0, 0, &ret);
    FUNC3(uri_builder);
    if(FUNC1(hres))
        return NULL;

    return ret;
}