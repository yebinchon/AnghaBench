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
typedef  int /*<<< orphan*/  nsICommandParams ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NSCMD_FONTCOLOR ; 
 int /*<<< orphan*/  NSSTATE_ATTRIBUTE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UPDATE_UI ; 
 scalar_t__ VT_I4 ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC11(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    FUNC1("(%p)->(%p %p)\n", This, in, out);

    if(in) {
        if(FUNC3(in) == VT_I4) {
            nsICommandParams *nsparam = FUNC4();
            char color_str[10];

            FUNC9(color_str, "#%02x%02x%02x",
                    FUNC2(in)&0xff, (FUNC2(in)>>8)&0xff, (FUNC2(in)>>16)&0xff);

            FUNC8(nsparam, NSSTATE_ATTRIBUTE, color_str);
            FUNC6(This, NSCMD_FONTCOLOR, nsparam);

            FUNC7(nsparam);
        }else {
            FUNC0("unsupported forecolor %s\n", FUNC5(in));
        }

        FUNC10(This, UPDATE_UI);
    }

    if(out) {
        FUNC0("unsupported out\n");
        return E_NOTIMPL;
    }

    return S_OK;
}