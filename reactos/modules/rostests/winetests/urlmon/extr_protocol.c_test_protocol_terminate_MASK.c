#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ test_abort ; 

__attribute__((used)) static void FUNC6(IInternetProtocol *protocol)
{
    BYTE buf[3600];
    DWORD cb;
    HRESULT hres;

    hres = FUNC0(protocol, 0);
    FUNC5(hres == S_OK, "LockRequest failed: %08x\n", hres);

    hres = FUNC1(protocol, buf, 1, &cb);
    FUNC5(hres == (test_abort ? S_OK : S_FALSE), "Read failed: %08x\n", hres);

    hres = FUNC2(protocol, 0);
    FUNC5(hres == S_OK, "Terminate failed: %08x\n", hres);

    /* This wait is to give the internet handles being freed in Terminate
     * enough time to actually terminate in all cases. Internet handles
     * terminate asynchronously and native reuses the main InternetOpen
     * handle. The only case in which this seems to be necessary is on
     * wine with native wininet and urlmon, resulting in the next time
     * test_http_protocol_url being called the first data notification actually
     * being an extra last data notification from the previous connection
     * about once out of every ten times. */
    FUNC4(100);

    hres = FUNC3(protocol);
    FUNC5(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
}