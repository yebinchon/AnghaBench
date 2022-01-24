#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEventTarget ;
struct TYPE_9__ {int /*<<< orphan*/  nsIDOMEventListener_iface; } ;
typedef  TYPE_3__ nsEventListener ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  cpp_bool ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {TYPE_2__* window; } ;
struct TYPE_10__ {TYPE_1__ basedoc; } ;
struct TYPE_8__ {int /*<<< orphan*/  nswindow; } ;
typedef  TYPE_4__ HTMLDocumentNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMEventTarget ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC7(HTMLDocumentNode *doc, const WCHAR *type, nsEventListener *listener, cpp_bool is_capture)
{
    nsIDOMEventTarget *target;
    nsAString type_str;
    nsresult nsres;

    if(!doc->basedoc.window)
        return;

    nsres = FUNC6(doc->basedoc.window->nswindow, &IID_nsIDOMEventTarget, (void**)&target);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIDOMEventTarget interface: %08x\n", nsres);
        return;
    }

    FUNC3(&type_str, type);
    nsres = FUNC5(target, &type_str,
            &listener->nsIDOMEventListener_iface, is_capture);
    FUNC2(&type_str);
    FUNC4(target);
    if(FUNC1(nsres))
        FUNC0("RemoveEventTarget failed: %08x\n", nsres);
}