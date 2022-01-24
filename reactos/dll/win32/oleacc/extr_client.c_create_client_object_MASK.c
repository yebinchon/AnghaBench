#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_5__ IAccessible_iface; scalar_t__ enum_pos; int /*<<< orphan*/  hwnd; TYPE_2__ IEnumVARIANT_iface; TYPE_1__ IOleWindow_iface; } ;
typedef  int /*<<< orphan*/  IID ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ Client ;

/* Variables and functions */
 int /*<<< orphan*/  ClientEnumVARIANTVtbl ; 
 int /*<<< orphan*/  ClientOleWindowVtbl ; 
 int /*<<< orphan*/  ClientVtbl ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/  const*,void**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int) ; 

HRESULT FUNC4(HWND hwnd, const IID *iid, void **obj)
{
    Client *client;
    HRESULT hres;

    if(!FUNC2(hwnd))
        return E_FAIL;

    client = FUNC3(sizeof(Client));
    if(!client)
        return E_OUTOFMEMORY;

    client->IAccessible_iface.lpVtbl = &ClientVtbl;
    client->IOleWindow_iface.lpVtbl = &ClientOleWindowVtbl;
    client->IEnumVARIANT_iface.lpVtbl = &ClientEnumVARIANTVtbl;
    client->ref = 1;
    client->hwnd = hwnd;
    client->enum_pos = 0;

    hres = FUNC0(&client->IAccessible_iface, iid, obj);
    FUNC1(&client->IAccessible_iface);
    return hres;
}