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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int activex_refcnt ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * client_site ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/ * plugin_hwnd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(IHTMLDocument2 *doc)
{
    ULONG ref;

    FUNC5(doc, FALSE);
    ref = FUNC1(doc);
    FUNC4(!ref || FUNC3(ref == 1) /* Vista */, "ref = %d\n", ref);

    if(client_site) {
        FUNC2(client_site);
        client_site = NULL;
    }

    if(plugin_hwnd) {
        FUNC0(plugin_hwnd);
        plugin_hwnd = NULL;
    }

    FUNC4(!activex_refcnt, "activex_refcnt = %d\n", activex_refcnt);
}