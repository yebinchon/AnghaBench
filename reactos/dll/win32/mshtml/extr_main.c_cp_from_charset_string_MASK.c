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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  uiInternetEncoding; } ;
typedef  TYPE_1__ MIMECSETINFO ;
typedef  int /*<<< orphan*/  IMultiLanguage2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CMultiLanguage ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMultiLanguage2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlang ; 

UINT FUNC7(BSTR charset)
{
    MIMECSETINFO info;
    HRESULT hres;

    if(!mlang) {
        IMultiLanguage2 *new_mlang;

        hres = FUNC0(&CLSID_CMultiLanguage, NULL, CLSCTX_INPROC_SERVER,
                &IID_IMultiLanguage2, (void**)&new_mlang);
        if(FUNC2(hres)) {
            FUNC1("Could not create CMultiLanguage instance\n");
            return CP_UTF8;
        }

        if(FUNC6((void**)&mlang, new_mlang, NULL))
            FUNC5(new_mlang);
    }

    hres = FUNC4(mlang, charset, &info);
    if(FUNC2(hres)) {
        FUNC3("GetCharsetInfo failed: %08x\n", hres);
        return CP_UTF8;
    }

    return info.uiInternetEncoding;
}