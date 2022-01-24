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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 int /*<<< orphan*/  CLSID_HTMLStyle ; 
 int /*<<< orphan*/  DIID_DispHTMLBody ; 
 int /*<<< orphan*/  DIID_HTMLDocumentEvents ; 
 int /*<<< orphan*/  Dispatch ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_MSHTML ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned short,...) ; 
 int /*<<< orphan*/  persist_clsid ; 
 int /*<<< orphan*/  support_classinfo2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    unsigned short maj_ver, min_ver;
    IID libid, iid;
    HRESULT hres;

    support_classinfo2 = TRUE;

    maj_ver = min_ver = 0xdead;
    hres = FUNC0((IUnknown*)&Dispatch, &libid, &iid, &maj_ver, &min_ver);
    FUNC2(hres == S_OK, "AtlGetObjectSourceInterface failed: %08x\n", hres);
    FUNC2(FUNC1(&libid, &LIBID_MSHTML), "libid = %s\n", FUNC3(&libid));
    FUNC2(FUNC1(&iid, &DIID_DispHTMLBody), "iid = %s\n", FUNC3(&iid));
    FUNC2(maj_ver == 4 && min_ver == 0, "ver = %d.%d\n", maj_ver, min_ver);

    support_classinfo2 = FALSE;
    persist_clsid = CLSID_HTMLDocument;

    maj_ver = min_ver = 0xdead;
    hres = FUNC0((IUnknown*)&Dispatch, &libid, &iid, &maj_ver, &min_ver);
    FUNC2(hres == S_OK, "AtlGetObjectSourceInterface failed: %08x\n", hres);
    FUNC2(FUNC1(&libid, &LIBID_MSHTML), "libid = %s\n", FUNC3(&libid));
    FUNC2(FUNC1(&iid, &DIID_HTMLDocumentEvents), "iid = %s\n", FUNC3(&iid));
    FUNC2(maj_ver == 4 && min_ver == 0, "ver = %d.%d\n", maj_ver, min_ver);

    persist_clsid = CLSID_HTMLStyle;

    maj_ver = min_ver = 0xdead;
    hres = FUNC0((IUnknown*)&Dispatch, &libid, &iid, &maj_ver, &min_ver);
    FUNC2(hres == S_OK, "AtlGetObjectSourceInterface failed: %08x\n", hres);
    FUNC2(FUNC1(&libid, &LIBID_MSHTML), "libid = %s\n", FUNC3(&libid));
    FUNC2(FUNC1(&iid, &IID_NULL), "iid = %s\n", FUNC3(&iid));
    FUNC2(maj_ver == 4 && min_ver == 0, "ver = %d.%d\n", maj_ver, min_ver);
}