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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ VT_I4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ navHyperlink ; 
 int /*<<< orphan*/  nav_url ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(BSTR uri, VARIANT *flags, VARIANT *target_frame, VARIANT *post_data,
        VARIANT *headers, IBindCtx *bind_ctx, LPOLESTR url_fragment)
{
    FUNC2(!FUNC3(uri, nav_url), "uri = %s\n", FUNC4(uri));
    FUNC2(FUNC1(flags) == VT_I4, "V_VT(flags) = %d\n", FUNC1(flags));
    FUNC2(FUNC0(flags) == navHyperlink, "V_I4(flags) = %x\n", FUNC0(flags));
    FUNC2(!target_frame, "target_frame != NULL\n");
    FUNC2(!post_data, "post_data != NULL\n");
    FUNC2(!headers, "headers != NULL\n");
    FUNC2(bind_ctx != NULL, "bind_ctx == NULL\n");
    FUNC2(!url_fragment, "url_dragment = %s\n", FUNC4(url_fragment));
}