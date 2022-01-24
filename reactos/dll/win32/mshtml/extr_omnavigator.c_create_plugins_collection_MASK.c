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
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLPluginsCollection_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * navigator; } ;
typedef  int /*<<< orphan*/  OmNavigator ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLPluginsCollection ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HTMLPluginsCollectionVtbl ; 
 int /*<<< orphan*/  HTMLPluginsCollection_dispex ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(OmNavigator *navigator, HTMLPluginsCollection **ret)
{
    HTMLPluginsCollection *col;

    col = FUNC0(sizeof(*col));
    if(!col)
        return E_OUTOFMEMORY;

    col->IHTMLPluginsCollection_iface.lpVtbl = &HTMLPluginsCollectionVtbl;
    col->ref = 1;
    col->navigator = navigator;

    FUNC1(&col->dispex, (IUnknown*)&col->IHTMLPluginsCollection_iface,
                &HTMLPluginsCollection_dispex);

    *ret = col;
    return S_OK;
}