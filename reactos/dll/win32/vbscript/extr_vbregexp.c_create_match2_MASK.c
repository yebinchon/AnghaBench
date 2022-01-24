#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  match_state_t ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IMatch2_iface; TYPE_1__ IMatch_iface; int /*<<< orphan*/  sub_matches; int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ Match2 ;
typedef  TYPE_3__ IMatch2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Match2Vtbl ; 
 int /*<<< orphan*/  Match2_tid ; 
 int /*<<< orphan*/  MatchVtbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(DWORD pos, match_state_t **result, IMatch2 **match)
{
    Match2 *ret;
    HRESULT hres;

    hres = FUNC4(Match2_tid);
    if(FUNC0(hres))
        return hres;

    ret = FUNC2(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->index = pos;
    hres = FUNC1(pos, result ? *result : NULL, &ret->sub_matches);
    if(FUNC0(hres)) {
        FUNC3(ret);
        return hres;
    }
    if(result)
        *result = NULL;

    ret->IMatch2_iface.lpVtbl = &Match2Vtbl;
    ret->IMatch_iface.lpVtbl = &MatchVtbl;

    ret->ref = 1;
    *match = &ret->IMatch2_iface;
    return hres;
}