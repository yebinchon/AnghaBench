#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_8__ {TYPE_1__* doc_obj; } ;
struct TYPE_7__ {scalar_t__ usermode; } ;
typedef  TYPE_2__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ EDITMODE ; 
 int /*<<< orphan*/  NSCMD_COPY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    FUNC0("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(This->doc_obj->usermode == EDITMODE)
        return FUNC2(This, cmdexecopt, in, out);

    FUNC1(This, NSCMD_COPY, NULL);
    return S_OK;
}