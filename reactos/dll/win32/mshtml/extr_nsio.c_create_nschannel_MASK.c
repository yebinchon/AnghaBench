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
typedef  int /*<<< orphan*/  nsresult ;
struct TYPE_13__ {int /*<<< orphan*/  nsIFileURL_iface; } ;
typedef  TYPE_4__ nsWineURI ;
struct TYPE_12__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_4__* uri; int /*<<< orphan*/  request_headers; int /*<<< orphan*/  response_headers; int /*<<< orphan*/  request_method; TYPE_3__ nsIHttpChannelInternal_iface; TYPE_2__ nsIUploadChannel_iface; TYPE_1__ nsIHttpChannel_iface; } ;
typedef  TYPE_5__ nsChannel ;

/* Variables and functions */
 int /*<<< orphan*/  METHOD_GET ; 
 int /*<<< orphan*/  NS_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  NS_ERROR_UNEXPECTED ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsChannelVtbl ; 
 int /*<<< orphan*/  nsHttpChannelInternalVtbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsUploadChannelVtbl ; 

__attribute__((used)) static nsresult FUNC4(nsWineURI *uri, nsChannel **ret)
{
    nsChannel *channel;

    if(!FUNC0(uri))
        return NS_ERROR_UNEXPECTED;

    channel = FUNC1(sizeof(nsChannel));
    if(!channel)
        return NS_ERROR_OUT_OF_MEMORY;

    channel->nsIHttpChannel_iface.lpVtbl = &nsChannelVtbl;
    channel->nsIUploadChannel_iface.lpVtbl = &nsUploadChannelVtbl;
    channel->nsIHttpChannelInternal_iface.lpVtbl = &nsHttpChannelInternalVtbl;
    channel->ref = 1;
    channel->request_method = METHOD_GET;
    FUNC2(&channel->response_headers);
    FUNC2(&channel->request_headers);

    FUNC3(&uri->nsIFileURL_iface);
    channel->uri = uri;

    *ret = channel;
    return NS_OK;
}