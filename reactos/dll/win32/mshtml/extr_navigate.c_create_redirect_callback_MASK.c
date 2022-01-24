#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_4__* bsc; TYPE_5__* nschannel; TYPE_2__ nsIAsyncVerifyRedirectCallback_iface; } ;
typedef  TYPE_3__ nsRedirectCallback ;
struct TYPE_10__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_13__ {TYPE_1__ bsc; } ;
typedef  TYPE_4__ nsChannelBSC ;
struct TYPE_14__ {int /*<<< orphan*/  nsIHttpChannel_iface; } ;
typedef  TYPE_5__ nsChannel ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  nsAsyncVerifyRedirectCallbackVtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(nsChannel *nschannel, nsChannelBSC *bsc, nsRedirectCallback **ret)
{
    nsRedirectCallback *callback;

    callback = FUNC1(sizeof(*callback));
    if(!callback)
        return E_OUTOFMEMORY;

    callback->nsIAsyncVerifyRedirectCallback_iface.lpVtbl = &nsAsyncVerifyRedirectCallbackVtbl;
    callback->ref = 1;

    FUNC2(&nschannel->nsIHttpChannel_iface);
    callback->nschannel = nschannel;

    FUNC0(&bsc->bsc.IBindStatusCallback_iface);
    callback->bsc = bsc;

    *ret = callback;
    return S_OK;
}