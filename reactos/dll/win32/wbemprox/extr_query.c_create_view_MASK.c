#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct view {scalar_t__ count; int /*<<< orphan*/ * result; struct expr const* cond; int /*<<< orphan*/  table; struct property const* proplist; } ;
struct property {int dummy; } ;
struct expr {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 struct view* FUNC1 (int) ; 

HRESULT FUNC2( const struct property *proplist, const WCHAR *class,
                     const struct expr *cond, struct view **ret )
{
    struct view *view = FUNC1( sizeof(struct view) );

    if (!view) return E_OUTOFMEMORY;
    view->proplist = proplist;
    view->table    = FUNC0( class );
    view->cond     = cond;
    view->result   = NULL;
    view->count    = 0;
    *ret = view;
    return S_OK;
}