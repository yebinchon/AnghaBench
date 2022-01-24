#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMDocument ;
struct TYPE_4__ {int /*<<< orphan*/ * inner_window; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HTMLInnerWindow ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HTMLInnerWindow *FUNC6(nsIDOMHTMLElement *elem)
{
    nsIDOMWindow *nswindow;
    nsIDOMDocument *nsdoc;
    HTMLOuterWindow *window;
    nsresult nsres;

    nsres = FUNC3(elem, &nsdoc);
    if(FUNC0(nsres))
        return NULL;

    nsres = FUNC1(nsdoc, &nswindow);
    FUNC2(nsdoc);
    if(FUNC0(nsres) || !nswindow)
        return NULL;

    window = FUNC5(nswindow);
    FUNC4(nswindow);

    return window->base.inner_window;
}