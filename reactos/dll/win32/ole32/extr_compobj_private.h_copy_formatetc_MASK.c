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
struct TYPE_8__ {int /*<<< orphan*/  tdSize; } ;
struct TYPE_7__ {TYPE_2__* ptd; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ FORMATETC ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline HRESULT FUNC2(FORMATETC *dst, const FORMATETC *src)
{
    *dst = *src;
    if (src->ptd)
    {
        dst->ptd = FUNC0( src->ptd->tdSize );
        if (!dst->ptd) return E_OUTOFMEMORY;
        FUNC1( dst->ptd, src->ptd, src->ptd->tdSize );
    }
    return S_OK;
}