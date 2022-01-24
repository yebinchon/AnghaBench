#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEvent ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {TYPE_3__ element; int /*<<< orphan*/  nsanchor; } ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  TYPE_1__ HTMLAnchorElement ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENTID_CLICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC9(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLAnchorElement *This = FUNC4(iface);
    nsAString href_str, target_str;
    nsresult nsres;

    if(eid == EVENTID_CLICK) {
        FUNC6(&href_str, NULL);
        nsres = FUNC7(This->nsanchor, &href_str);
        if (FUNC2(nsres)) {
            FUNC0("Could not get anchor href: %08x\n", nsres);
            goto fallback;
        }

        FUNC6(&target_str, NULL);
        nsres = FUNC8(This->nsanchor, &target_str);
        if (FUNC2(nsres)) {
            FUNC0("Could not get anchor target: %08x\n", nsres);
            goto fallback;
        }

        return FUNC3(&This->element, &href_str, &target_str, event, prevent_default);

fallback:
        FUNC5(&href_str);
        FUNC5(&target_str);
    }

    return FUNC1(&This->element.node, eid, event, prevent_default);
}