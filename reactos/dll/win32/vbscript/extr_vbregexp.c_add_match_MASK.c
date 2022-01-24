#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; int count; int /*<<< orphan*/ ** matches; } ;
typedef  TYPE_1__ MatchCollection2 ;
typedef  int /*<<< orphan*/  IMatchCollection2 ;
typedef  int /*<<< orphan*/  IMatch2 ;
typedef  int /*<<< orphan*/  IMatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ **,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(IMatchCollection2 *iface, IMatch2 *add)
{
    MatchCollection2 *This = FUNC4(iface);

    FUNC1("(%p)->(%p)\n", This, add);

    if(!This->size) {
        This->matches = FUNC2(8*sizeof(IMatch*));
        if(!This->matches)
            return E_OUTOFMEMORY;
        This->size = 8;
    }else if(This->size == This->count) {
        IMatch2 **new_matches = FUNC3(This->matches, 2*This->size*sizeof(IMatch*));
        if(!new_matches)
            return E_OUTOFMEMORY;

        This->matches = new_matches;
        This->size <<= 1;
    }

    This->matches[This->count++] = add;
    FUNC0(add);
    return S_OK;
}