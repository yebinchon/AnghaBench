#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
struct TYPE_12__ {int /*<<< orphan*/  nsIFileURL_iface; } ;
typedef  TYPE_3__ nsWineURI ;
struct TYPE_13__ {int load_flags; scalar_t__ request_method; scalar_t__ referrer; scalar_t__ original_uri; scalar_t__ notif_callback; scalar_t__ load_group; TYPE_2__* uri; } ;
typedef  TYPE_4__ nsChannel ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {TYPE_1__* window_ref; } ;
struct TYPE_10__ {int /*<<< orphan*/ * window; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int LOAD_REPLACE ; 
 scalar_t__ METHOD_POST ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

HRESULT FUNC11(const WCHAR *url, nsChannel *orig_channel, nsChannel **ret)
{
    HTMLOuterWindow *window = NULL;
    nsChannel *channel;
    nsWineURI *uri;
    IUri *iuri;
    nsresult nsres;
    HRESULT hres;

    hres = FUNC6(url, 0, &iuri);
    if(FUNC0(hres))
        return hres;

    if(orig_channel->uri->window_ref)
        window = orig_channel->uri->window_ref->window;
    nsres = FUNC5(iuri, window, NULL, NULL, &uri);
    FUNC2(iuri);
    if(FUNC3(nsres))
        return E_FAIL;

    nsres = FUNC4(uri, &channel);
    FUNC7(&uri->nsIFileURL_iface);
    if(FUNC3(nsres))
        return E_FAIL;

    if(orig_channel->load_group) {
        FUNC9(orig_channel->load_group);
        channel->load_group = orig_channel->load_group;
    }

    if(orig_channel->notif_callback) {
        FUNC8(orig_channel->notif_callback);
        channel->notif_callback = orig_channel->notif_callback;
    }

    channel->load_flags = orig_channel->load_flags | LOAD_REPLACE;

    if(orig_channel->request_method == METHOD_POST)
        FUNC1("unsupported POST method\n");

    if(orig_channel->original_uri) {
        FUNC10(orig_channel->original_uri);
        channel->original_uri = orig_channel->original_uri;
    }

    if(orig_channel->referrer) {
        FUNC10(orig_channel->referrer);
        channel->referrer = orig_channel->referrer;
    }

    *ret = channel;
    return S_OK;
}