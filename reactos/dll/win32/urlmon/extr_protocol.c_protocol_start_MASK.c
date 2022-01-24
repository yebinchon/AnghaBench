#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int cbSize; int dwOptions; } ;
struct TYPE_11__ {int bindf; TYPE_1__* vtbl; TYPE_8__ bind_info; int /*<<< orphan*/ * protocol_sink; int /*<<< orphan*/ * protocol; } ;
struct TYPE_10__ {scalar_t__ (* open_request ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ Protocol ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IInternetProtocolSink ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  IInternetBindInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BINDINFO ;

/* Variables and functions */
 int BINDF_FROMURLMON ; 
 int BINDF_NEEDFILE ; 
 int BINDF_NOWRITECACHE ; 
 int BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS ; 
 int /*<<< orphan*/  BINDSTATUS_DIRECTBIND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INET_E_NO_SESSION ; 
 int /*<<< orphan*/  INTERNET_FLAG_KEEP_CONNECTION ; 
 int /*<<< orphan*/  INTERNET_FLAG_NEED_FILE ; 
 int /*<<< orphan*/  INTERNET_FLAG_NO_AUTO_REDIRECT ; 
 int /*<<< orphan*/  INTERNET_FLAG_NO_CACHE_WRITE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  internet_session ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC10(Protocol *protocol, IInternetProtocol *prot, IUri *uri,
        IInternetProtocolSink *protocol_sink, IInternetBindInfo *bind_info)
{
    DWORD request_flags;
    HRESULT hres;

    protocol->protocol = prot;

    FUNC2(protocol_sink);
    protocol->protocol_sink = protocol_sink;

    FUNC5(&protocol->bind_info, 0, sizeof(protocol->bind_info));
    protocol->bind_info.cbSize = sizeof(BINDINFO);
    hres = FUNC1(bind_info, &protocol->bindf, &protocol->bind_info);
    if(hres != S_OK) {
        FUNC3("GetBindInfo failed: %08x\n", hres);
        return FUNC8(protocol, hres);
    }

    if(!(protocol->bindf & BINDF_FROMURLMON))
        FUNC7(protocol, BINDSTATUS_DIRECTBIND, NULL);

    if(!FUNC4(bind_info))
        return FUNC8(protocol, INET_E_NO_SESSION);

    request_flags = INTERNET_FLAG_KEEP_CONNECTION;
    if(protocol->bindf & BINDF_NOWRITECACHE)
        request_flags |= INTERNET_FLAG_NO_CACHE_WRITE;
    if(protocol->bindf & BINDF_NEEDFILE)
        request_flags |= INTERNET_FLAG_NEED_FILE;
    if(protocol->bind_info.dwOptions & BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS)
        request_flags |= INTERNET_FLAG_NO_AUTO_REDIRECT;

    hres = protocol->vtbl->open_request(protocol, uri, request_flags, internet_session, bind_info);
    if(FUNC0(hres)) {
        FUNC6(protocol);
        return FUNC8(protocol, hres);
    }

    return S_OK;
}