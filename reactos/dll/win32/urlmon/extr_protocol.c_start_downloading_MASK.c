#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cache_file ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {int bindf; int /*<<< orphan*/  flags; int /*<<< orphan*/  request; TYPE_1__* vtbl; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* start_downloading ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ Protocol ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int BINDF_NEEDFILE ; 
 int /*<<< orphan*/  BINDSTATUS_CACHEFILENAMEAVAILABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FLAG_FIRST_CONTINUE_COMPLETE ; 
 int /*<<< orphan*/  INET_E_REDIRECT_FAILED ; 
 int /*<<< orphan*/  INTERNET_OPTION_DATAFILE_NAME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC7(Protocol *protocol)
{
    HRESULT hres;

    hres = protocol->vtbl->start_downloading(protocol);
    if(FUNC0(hres)) {
        if(hres == INET_E_REDIRECT_FAILED)
            return S_OK;
        FUNC3(protocol);
        FUNC5(protocol, hres);
        return hres;
    }

    if(protocol->bindf & BINDF_NEEDFILE) {
        WCHAR cache_file[MAX_PATH];
        DWORD buflen = sizeof(cache_file);

        if(FUNC2(protocol->request, INTERNET_OPTION_DATAFILE_NAME, cache_file, &buflen)) {
            FUNC4(protocol, BINDSTATUS_CACHEFILENAMEAVAILABLE, cache_file);
        }else {
            FUNC1("Could not get cache file\n");
        }
    }

    protocol->flags |= FLAG_FIRST_CONTINUE_COMPLETE;
    return S_OK;
}