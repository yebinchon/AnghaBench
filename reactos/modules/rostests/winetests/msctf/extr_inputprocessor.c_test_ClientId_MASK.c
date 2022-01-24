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
typedef  scalar_t__ TfClientId ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ITfClientId ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  IID_ITfClientId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ cid ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ tid ; 

__attribute__((used)) static void FUNC6(void)
{
    ITfClientId *pcid;
    TfClientId id1,id2;
    HRESULT hr;
    GUID g2;

    hr = FUNC3(g_tm, &IID_ITfClientId, (LPVOID*)&pcid);
    FUNC5(FUNC4(hr),"Unable to acquire ITfClientId interface\n");

    FUNC0(&g2);

    hr = FUNC1(pcid,&GUID_NULL,&id1);
    FUNC5(FUNC4(hr),"GetClientId failed\n");
    hr = FUNC1(pcid,&GUID_NULL,&id2);
    FUNC5(FUNC4(hr),"GetClientId failed\n");
    FUNC5(id1==id2,"Id's for GUID_NULL do not match\n");
    hr = FUNC1(pcid,&CLSID_FakeService,&id2);
    FUNC5(FUNC4(hr),"GetClientId failed\n");
    FUNC5(id2!=id1,"Id matches GUID_NULL\n");
    FUNC5(id2==tid,"Id for CLSID_FakeService not matching tid\n");
    FUNC5(id2!=cid,"Id for CLSID_FakeService matching cid\n");
    hr = FUNC1(pcid,&g2,&id2);
    FUNC5(FUNC4(hr),"GetClientId failed\n");
    FUNC5(id2!=id1,"Id matches GUID_NULL\n");
    FUNC5(id2!=tid,"Id for random guid matching tid\n");
    FUNC5(id2!=cid,"Id for random guid matching cid\n");
    FUNC2(pcid);
}