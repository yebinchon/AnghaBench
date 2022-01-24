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
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IInternetProtocol_iface; TYPE_1__ IInternetProtocolSink_iface; } ;
typedef  TYPE_2__ MimeFilter ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  InternetProtocolSinkVtbl ; 
 int /*<<< orphan*/  MimeFilterProtocolVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int) ; 

HRESULT FUNC3(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    MimeFilter *ret;

    FUNC0("(%p %p)\n", pUnkOuter, ppobj);

    FUNC1();

    ret = FUNC2(sizeof(MimeFilter));

    ret->IInternetProtocol_iface.lpVtbl = &MimeFilterProtocolVtbl;
    ret->IInternetProtocolSink_iface.lpVtbl = &InternetProtocolSinkVtbl;
    ret->ref = 1;

    *ppobj = &ret->IInternetProtocol_iface;
    return S_OK;
}