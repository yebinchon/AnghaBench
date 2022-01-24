#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIStreamListener ;
struct TYPE_7__ {int /*<<< orphan*/ * headers; } ;
struct TYPE_8__ {TYPE_1__ request_data; } ;
struct TYPE_9__ {TYPE_2__ bsc; int /*<<< orphan*/ * nscontext; int /*<<< orphan*/ * nslistener; TYPE_4__* nschannel; } ;
typedef  TYPE_3__ nsChannelBSC ;
struct TYPE_10__ {int /*<<< orphan*/  request_headers; int /*<<< orphan*/  nsIHttpChannel_iface; } ;
typedef  TYPE_4__ nsChannel ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(nsChannelBSC *This, nsChannel *channel, nsIStreamListener *listener, nsISupports *context)
{
    FUNC3(&channel->nsIHttpChannel_iface);
    This->nschannel = channel;

    FUNC4(listener);
    This->nslistener = listener;

    if(context) {
        FUNC5(context);
        This->nscontext = context;
    }

    if(This->bsc.request_data.headers) {
        HRESULT hres;

        hres = FUNC6(This->bsc.request_data.headers, &channel->request_headers);
        FUNC2(This->bsc.request_data.headers);
        This->bsc.request_data.headers = NULL;
        if(FUNC0(hres))
            FUNC1("parse_headers failed: %08x\n", hres);
    }
}