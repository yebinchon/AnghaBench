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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMMouseEvent ;
typedef  int /*<<< orphan*/  nsIDOMEvent ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int INT16 ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMMouseEvent ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

HRESULT FUNC8(HTMLElement *element, nsAString *href_str, nsAString *target_str,
                                nsIDOMEvent *event, BOOL *prevent_default)
{
    nsIDOMMouseEvent *mouse_event;
    INT16 button;
    nsresult nsres;
    HRESULT hres;

    FUNC0("CLICK\n");

    nsres = FUNC5(event, &IID_nsIDOMMouseEvent, (void**)&mouse_event);
    FUNC1(nsres == NS_OK);

    nsres = FUNC6(mouse_event, &button);
    FUNC1(nsres == NS_OK);

    FUNC7(mouse_event);

    switch(button) {
    case 0:
        *prevent_default = TRUE;
        hres = FUNC2(element, href_str, target_str);
        break;
    case 1:
        *prevent_default = TRUE;
        hres = FUNC3(element, href_str, NULL);
        break;
    default:
        *prevent_default = FALSE;
        hres = S_OK;
    }

    FUNC4(href_str);
    FUNC4(target_str);
    return hres;
}