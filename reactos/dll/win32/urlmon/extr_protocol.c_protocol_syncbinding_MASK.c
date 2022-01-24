#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  content_length; int /*<<< orphan*/  available_bytes; int /*<<< orphan*/  protocol_sink; int /*<<< orphan*/  query_available; int /*<<< orphan*/  request; } ;
typedef  TYPE_1__ Protocol ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BSCF_DATAFULLYAVAILABLE ; 
 int BSCF_LASTDATANOTIFICATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FLAG_FIRST_DATA_REPORTED ; 
 int FLAG_LAST_DATA_REPORTED ; 
 int FLAG_SYNC_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

HRESULT FUNC6(Protocol *protocol)
{
    BOOL res;
    HRESULT hres;

    protocol->flags |= FLAG_SYNC_READ;

    hres = FUNC5(protocol);
    if(FUNC0(hres))
        return hres;

    res = FUNC3(protocol->request, &protocol->query_available, 0, 0);
    if(res)
        protocol->available_bytes = protocol->query_available;
    else
        FUNC4("InternetQueryDataAvailable failed: %u\n", FUNC1());

    protocol->flags |= FLAG_FIRST_DATA_REPORTED|FLAG_LAST_DATA_REPORTED;
    FUNC2(protocol->protocol_sink, BSCF_LASTDATANOTIFICATION|BSCF_DATAFULLYAVAILABLE,
            protocol->available_bytes, protocol->content_length);
    return S_OK;
}