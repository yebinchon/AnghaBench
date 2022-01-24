#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  IBindStatusCallback_iface; TYPE_5__* window; } ;
struct TYPE_12__ {TYPE_2__ bsc; TYPE_3__* nschannel; } ;
typedef  TYPE_4__ nsChannelBSC ;
struct TYPE_9__ {int /*<<< orphan*/  outer_window; } ;
struct TYPE_13__ {TYPE_1__ base; TYPE_4__* bscallback; } ;
struct TYPE_11__ {int /*<<< orphan*/  content_type; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  TYPE_5__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC8(HTMLInnerWindow *pending_window, IMoniker *mon, IStream *stream)
{
    nsChannelBSC *bscallback = pending_window->bscallback;
    HRESULT hres = S_OK;

    if(!bscallback->nschannel) {
        FUNC0("NULL nschannel\n");
        return E_FAIL;
    }

    bscallback->nschannel->content_type = FUNC5("text/html");
    if(!bscallback->nschannel->content_type)
        return E_OUTOFMEMORY;

    FUNC7(pending_window->base.outer_window, mon, 0);

    bscallback->bsc.window = pending_window;
    if(stream)
        hres = FUNC6(bscallback, stream);
    if(FUNC3(hres))
        hres = FUNC4(bscallback);
    if(FUNC1(hres))
        FUNC2(&bscallback->bsc.IBindStatusCallback_iface, hres,
                ERROR_SUCCESS);

    return hres;
}