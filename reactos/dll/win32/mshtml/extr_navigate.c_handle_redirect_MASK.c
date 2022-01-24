#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
struct TYPE_12__ {int /*<<< orphan*/  nsIAsyncVerifyRedirectCallback_iface; TYPE_5__* nschannel; } ;
typedef  TYPE_1__ nsRedirectCallback ;
typedef  int /*<<< orphan*/  nsIChannelEventSink ;
typedef  int /*<<< orphan*/  nsIChannel ;
struct TYPE_13__ {TYPE_5__* nschannel; } ;
typedef  TYPE_2__ nsChannelBSC ;
struct TYPE_14__ {int /*<<< orphan*/  nsIHttpChannel_iface; } ;
typedef  TYPE_3__ nsChannel ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_15__ {int /*<<< orphan*/  nsIHttpChannel_iface; int /*<<< orphan*/  notif_callback; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IID_nsIChannelEventSink ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REDIRECT_TEMPORARY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,TYPE_5__*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,TYPE_5__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static HRESULT FUNC12(nsChannelBSC *This, const WCHAR *new_url)
{
    nsRedirectCallback *callback;
    nsIChannelEventSink *sink;
    nsChannel *new_channel;
    nsresult nsres;
    HRESULT hres;

    FUNC3("(%p)->(%s)\n", This, FUNC6(new_url));

    if(!This->nschannel || !This->nschannel->notif_callback)
        return S_OK;

    nsres = FUNC11(This->nschannel->notif_callback, &IID_nsIChannelEventSink, (void**)&sink);
    if(FUNC1(nsres))
        return S_OK;

    hres = FUNC5(new_url, This->nschannel, &new_channel);
    if(FUNC2(hres)) {
        FUNC3("%p %p->%p\n", This, This->nschannel, new_channel);

        hres = FUNC4(new_channel, This, &callback);
        FUNC10(&new_channel->nsIHttpChannel_iface);
    }

    if(FUNC2(hres)) {
        nsres = FUNC8(sink, (nsIChannel*)&This->nschannel->nsIHttpChannel_iface,
                (nsIChannel*)&callback->nschannel->nsIHttpChannel_iface, REDIRECT_TEMPORARY, /* FIXME */
                &callback->nsIAsyncVerifyRedirectCallback_iface);

        if(FUNC1(nsres))
            FUNC0("AsyncOnChannelRedirect failed: %08x\n", hres);
        else if(This->nschannel != callback->nschannel)
            FUNC0("nschannel not updated\n");

        FUNC7(&callback->nsIAsyncVerifyRedirectCallback_iface);
    }

    FUNC9(sink);
    return hres;
}