#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct dictionary_enum {int ref; TYPE_1__ IEnumVARIANT_iface; TYPE_2__* dict; int /*<<< orphan*/  notify; int /*<<< orphan*/  cur; } ;
struct TYPE_5__ {int /*<<< orphan*/  IDictionary_iface; int /*<<< orphan*/  notifier; int /*<<< orphan*/  pairs; } ;
typedef  TYPE_2__ dictionary ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  dictenumvtbl ; 
 struct dictionary_enum* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(dictionary *dict, IUnknown **ret)
{
    struct dictionary_enum *This;

    *ret = NULL;

    This = FUNC1(sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->IEnumVARIANT_iface.lpVtbl = &dictenumvtbl;
    This->ref = 1;
    This->cur = FUNC3(&dict->pairs);
    FUNC2(&dict->notifier, &This->notify);
    This->dict = dict;
    FUNC0(&dict->IDictionary_iface);

    *ret = (IUnknown*)&This->IEnumVARIANT_iface;
    return S_OK;
}