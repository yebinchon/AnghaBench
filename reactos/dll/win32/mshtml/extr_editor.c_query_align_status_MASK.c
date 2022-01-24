#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ cpp_bool ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {TYPE_1__* doc_node; TYPE_3__* window; TYPE_2__* doc_obj; } ;
struct TYPE_8__ {scalar_t__ readystate; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
struct TYPE_6__ {int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_4__ HTMLDocument ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ EDITMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OLECMDF_ENABLED ; 
 int OLECMDF_LATCHED ; 
 int OLECMDF_SUPPORTED ; 
 scalar_t__ READYSTATE_INTERACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static DWORD FUNC4(HTMLDocument *This, const WCHAR *align)
{
    DWORD ret = OLECMDF_SUPPORTED | OLECMDF_ENABLED;
    nsAString justify_str;
    cpp_bool b;
    nsresult nsres;

    if(This->doc_obj->usermode != EDITMODE || This->window->readystate < READYSTATE_INTERACTIVE)
        return OLECMDF_SUPPORTED;

    FUNC2(&justify_str, align);
    nsres = FUNC3(This->doc_node->nsdoc, &justify_str, &b);
    FUNC1(&justify_str);
    if(FUNC0(nsres) && b)
        ret |= OLECMDF_LATCHED;

    return ret;
}