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
typedef  int /*<<< orphan*/  IHTMLOptionElement ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned line, IHTMLOptionElement *option, const char *text)
{
    BSTR bstr;
    HRESULT hres;

    bstr = FUNC3(text);
    hres = FUNC0(option, bstr);
    FUNC1(bstr);
    FUNC4(hres == S_OK, "put_text failed: %08x\n", hres);

    FUNC2(line, option, text);
}