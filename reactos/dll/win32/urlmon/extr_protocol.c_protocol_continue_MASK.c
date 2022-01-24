#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ pData; } ;
struct TYPE_13__ {int flags; scalar_t__ query_available; scalar_t__ available_bytes; int /*<<< orphan*/  request; scalar_t__ post_stream; TYPE_1__* vtbl; int /*<<< orphan*/  protocol_sink; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* on_error ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ Protocol ;
typedef  TYPE_3__ PROTOCOLDATA ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BINDSTATUS_DOWNLOADINGDATA ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FLAG_ERROR ; 
 int FLAG_REQUEST_COMPLETE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  INET_E_DATA_NOT_AVAILABLE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

HRESULT FUNC13(Protocol *protocol, PROTOCOLDATA *data)
{
    BOOL is_start;
    HRESULT hres;

    is_start = !data || data->pData == FUNC5(BINDSTATUS_DOWNLOADINGDATA);

    if(!protocol->request) {
        FUNC6("Expected request to be non-NULL\n");
        return S_OK;
    }

    if(!protocol->protocol_sink) {
        FUNC6("Expected IInternetProtocolSink pointer to be non-NULL\n");
        return S_OK;
    }

    if(protocol->flags & FLAG_ERROR) {
        protocol->flags &= ~FLAG_ERROR;
        protocol->vtbl->on_error(protocol, FUNC3(data->pData));
        return S_OK;
    }

    if(protocol->post_stream)
        return FUNC12(protocol);

    if(is_start) {
        hres = FUNC10(protocol);
        if(FUNC0(hres))
            return S_OK;
    }

    if(!data || data->pData >= FUNC5(BINDSTATUS_DOWNLOADINGDATA)) {
        if(!protocol->available_bytes) {
            if(protocol->query_available) {
                protocol->available_bytes = protocol->query_available;
            }else {
                BOOL res;

                /* InternetQueryDataAvailable may immediately fork and perform its asynchronous
                 * read, so clear the flag _before_ calling so it does not incorrectly get cleared
                 * after the status callback is called */
                protocol->flags &= ~FLAG_REQUEST_COMPLETE;
                res = FUNC2(protocol->request, &protocol->query_available, 0, 0);
                if(res) {
                    FUNC4("available %u bytes\n", protocol->query_available);
                    if(!protocol->query_available) {
                        FUNC7(protocol);
                        return S_OK;
                    }
                    protocol->available_bytes = protocol->query_available;
                }else if(FUNC1() != ERROR_IO_PENDING) {
                    protocol->flags |= FLAG_REQUEST_COMPLETE;
                    FUNC6("InternetQueryDataAvailable failed: %d\n", FUNC1());
                    FUNC9(protocol, INET_E_DATA_NOT_AVAILABLE);
                    return S_OK;
                }
            }

            protocol->flags |= FLAG_REQUEST_COMPLETE;
        }

        FUNC8(protocol);
    }

    return S_OK;
}