#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  nscontainer; } ;
typedef  TYPE_2__ HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  NSCMD_COPY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  UPDATE_UI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

HRESULT FUNC2(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    FUNC1(This, UPDATE_UI);

    if(!This->doc_obj->nscontainer)
        return E_FAIL;

    FUNC0(This->doc_obj->nscontainer, NSCMD_COPY);
    return S_OK;
}