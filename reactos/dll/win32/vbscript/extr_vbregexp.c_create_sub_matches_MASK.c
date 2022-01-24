#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int match_len; size_t paren_count; TYPE_2__* parens; int /*<<< orphan*/ * cp; } ;
typedef  TYPE_3__ match_state_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; scalar_t__* match; TYPE_3__* result; TYPE_1__ ISubMatches_iface; } ;
struct TYPE_10__ {int index; } ;
typedef  TYPE_4__ SubMatches ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubMatchesVtbl ; 
 int /*<<< orphan*/  SubMatches_tid ; 
 scalar_t__* FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC6(DWORD pos, match_state_t *result, SubMatches **sub_matches)
{
    SubMatches *ret;
    DWORD i;
    HRESULT hres;

    hres = FUNC4(SubMatches_tid);
    if(FUNC0(hres))
        return hres;

    ret = FUNC2(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->ISubMatches_iface.lpVtbl = &SubMatchesVtbl;

    ret->result = result;
    if(result) {
        ret->match = FUNC1((result->match_len+1) * sizeof(WCHAR));
        if(!ret->match) {
            FUNC3(ret);
            return E_OUTOFMEMORY;
        }
        FUNC5(ret->match, result->cp-result->match_len, result->match_len*sizeof(WCHAR));
        ret->match[result->match_len] = 0;

        result->cp = NULL;
        for(i=0; i<result->paren_count; i++)
            if(result->parens[i].index != -1)
                result->parens[i].index -= pos;
    }else {
        ret->match = NULL;
    }

    ret->ref = 1;
    *sub_matches = ret;
    return hres;
}