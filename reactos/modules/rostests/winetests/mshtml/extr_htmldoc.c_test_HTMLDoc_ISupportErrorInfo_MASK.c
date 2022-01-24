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
typedef  int /*<<< orphan*/  ISupportErrorInfo ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IErrorInfo ; 
 int /*<<< orphan*/  IID_ISupportErrorInfo ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    IHTMLDocument2 *doc;
    HRESULT hres;
    ISupportErrorInfo *sinfo;

    doc = FUNC3();

    hres = FUNC0(doc, &IID_ISupportErrorInfo, (void**)&sinfo);
    FUNC4(hres == S_OK, "got %x\n", hres);
    FUNC4(sinfo != NULL, "got %p\n", sinfo);
    if(sinfo)
    {
        hres = FUNC1(sinfo, &IID_IErrorInfo);
        FUNC4(hres == S_FALSE, "Expected S_OK, got %x\n", hres);
        FUNC2(sinfo);
    }

    FUNC5(doc);
}