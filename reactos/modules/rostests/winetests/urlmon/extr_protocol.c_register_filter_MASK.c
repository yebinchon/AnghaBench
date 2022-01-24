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
typedef  int /*<<< orphan*/  IInternetSession ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  gifW ; 
 int /*<<< orphan*/  mimefilter_cf ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pjpegW ; 

__attribute__((used)) static void FUNC5(BOOL do_register)
{
    IInternetSession *session;
    HRESULT hres;

    hres = FUNC4(0, &session, 0);
    FUNC3(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);

    if(do_register) {
        hres = FUNC0(session, &mimefilter_cf, &IID_IInternetProtocol, pjpegW);
        FUNC3(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
        hres = FUNC0(session, &mimefilter_cf, &IID_IInternetProtocol, gifW);
        FUNC3(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
    }else {
        hres = FUNC2(session, &mimefilter_cf, pjpegW);
        FUNC3(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
        hres = FUNC2(session, &mimefilter_cf, gifW);
        FUNC3(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
    }

    FUNC1(session);
}