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
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument3 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLDocument3 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static IHTMLElement *FUNC5(IHTMLDocument2 *doc, const char *id)
{
    IHTMLDocument3 *doc3;
    BSTR str = FUNC3(id);
    IHTMLElement *ret;
    HRESULT hres;

    hres = FUNC0(doc, &IID_IHTMLDocument3, (void**)&doc3);
    FUNC4(hres == S_OK, "Could not get IHTMLDocument3 iface: %08x\n", hres);

    hres = FUNC2(doc3, str, &ret);
    FUNC4(hres == S_OK, "getElementById failed: %08x\n", hres);

    FUNC1(doc3);
    return ret;
}