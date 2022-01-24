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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEventTarget ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_5__ {int /*<<< orphan*/  nsIDOMEventListener_iface; TYPE_1__* xhr; } ;
typedef  TYPE_2__ XMLHttpReqEventListener ;
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/ * event_listener; int /*<<< orphan*/  nsxhr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMEventTarget ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC7(XMLHttpReqEventListener *event_listener)
{
    nsIDOMEventTarget *event_target;
    nsAString str;
    nsresult nsres;

    static const WCHAR readystatechangeW[] =
        {'o','n','r','e','a','d','y','s','t','a','t','e','c','h','a','n','g','e',0};

    nsres = FUNC6(event_listener->xhr->nsxhr, &IID_nsIDOMEventTarget, (void**)&event_target);
    FUNC0(nsres == NS_OK);

    FUNC2(&str, readystatechangeW);
    nsres = FUNC5(event_target, &str, &event_listener->nsIDOMEventListener_iface, FALSE);
    FUNC1(&str);
    FUNC4(event_target);

    event_listener->xhr->event_listener = NULL;
    event_listener->xhr = NULL;
    FUNC3(&event_listener->nsIDOMEventListener_iface);
}