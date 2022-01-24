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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  IHtmlLoadOptions ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_HTMLLoadOptions ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int HTMLLOADOPTION_CODEPAGE ; 
 scalar_t__ HTMLLOADOPTION_FRAMELOAD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,...) ; 
 int /*<<< orphan*/  IID_IHtmlLoadOptions ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    IHtmlLoadOptions *loadopts;
    BYTE buf[100];
    DWORD size, i, data = 0xdeadbeef;
    HRESULT hres;

    hres = FUNC0(&CLSID_HTMLLoadOptions, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHtmlLoadOptions, (void**)&loadopts);
    FUNC6(hres == S_OK, "creating HTMLLoadOptions failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    for(i=0; i <= HTMLLOADOPTION_FRAMELOAD+3; i++) {
        size = 0xdeadbeef;
        FUNC5(buf, 0xdd, sizeof(buf));
        hres = FUNC2(loadopts, i, NULL, &size);
        FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
        FUNC6(size == 0, "size = %d\n", size);
        FUNC6(buf[0] == 0xdd, "buf changed\n");
    }

    size = 0xdeadbeef;
    hres = FUNC2(loadopts, HTMLLOADOPTION_CODEPAGE, NULL, &size);
    FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
    FUNC6(size == 0, "size = %d\n", size);

    hres = FUNC4(loadopts, HTMLLOADOPTION_CODEPAGE, &data, sizeof(data));
    FUNC6(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = sizeof(data);
    FUNC5(buf, 0xdd, sizeof(buf));
    hres = FUNC2(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
    FUNC6(size == sizeof(data), "size = %d\n", size);
    FUNC6(*(DWORD*)buf == data, "unexpected buf\n");

    size = sizeof(data)-1;
    FUNC5(buf, 0xdd, sizeof(buf));
    hres = FUNC2(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    FUNC6(hres == E_FAIL, "QueryOption failed: %08x\n", hres);
    FUNC6(size == sizeof(data) || !size, "size = %d\n", size);
    FUNC6(buf[0] == 0xdd, "buf changed\n");

    data = 100;
    hres = FUNC4(loadopts, HTMLLOADOPTION_CODEPAGE, &data, 0);
    FUNC6(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = 0xdeadbeef; 
    FUNC5(buf, 0xdd, sizeof(buf));
    hres = FUNC2(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
    FUNC6(size == 0, "size = %d\n", size);
    FUNC6(buf[0] == 0xdd, "buf changed\n");

    hres = FUNC4(loadopts, HTMLLOADOPTION_CODEPAGE, NULL, 0);
    FUNC6(hres == S_OK, "SetOption failed: %08x\n", hres);

    hres = FUNC4(loadopts, 1000, &data, sizeof(data));
    FUNC6(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = sizeof(data);
    FUNC5(buf, 0xdd, sizeof(buf));
    hres = FUNC2(loadopts, 1000, buf, &size);
    FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
    FUNC6(size == sizeof(data), "size = %d\n", size);
    FUNC6(*(DWORD*)buf == data, "unexpected buf\n");

    hres = FUNC4(loadopts, 1000, buf, sizeof(buf));
    FUNC6(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = 0xdeadbeef;
    hres = FUNC2(loadopts, 1000, buf, &size);
    FUNC6(hres == S_OK, "QueryOption failed: %08x\n", hres);
    FUNC6(size == sizeof(buf), "size = %d\n", size);

    FUNC3(loadopts);
}