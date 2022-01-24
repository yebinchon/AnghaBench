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
typedef  int /*<<< orphan*/  clsid3 ;
typedef  int /*<<< orphan*/  clsid2 ;
typedef  int /*<<< orphan*/  clsid ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_NULL ; 
 int E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  testpersist ; 
 int /*<<< orphan*/  testpersist2 ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    CLSID clsid, clsid2, clsid3;
    HRESULT hr;

    if (0) /* crashes on native systems */
        hr = FUNC4(NULL, NULL);

    FUNC2(&clsid, 0xcc, sizeof(clsid));
    FUNC2(&clsid3, 0xcc, sizeof(clsid3));
    hr = FUNC4(NULL, &clsid);
    FUNC3(hr == E_FAIL, "got 0x%08x\n", hr);
    FUNC3(FUNC0(&clsid, &CLSID_NULL) || FUNC1(FUNC0(&clsid, &clsid3)) /* win2k, winxp, win2k3 */,
        "got wrong clsid %s\n", FUNC5(&clsid));

    FUNC2(&clsid, 0xcc, sizeof(clsid));
    FUNC2(&clsid2, 0xab, sizeof(clsid2));
    hr = FUNC4((IUnknown*)&testpersist, &clsid);
    FUNC3(hr == 0x8fff2222, "got 0x%08x\n", hr);
    FUNC3(FUNC0(&clsid, &clsid2) || FUNC1(FUNC0(&clsid, &clsid3)) /* win2k3 */,
        "got wrong clsid %s\n", FUNC5(&clsid));

    /* IPersistFolder is also supported */
    FUNC2(&clsid, 0xcc, sizeof(clsid));
    FUNC2(&clsid2, 0xab, sizeof(clsid2));
    FUNC2(&clsid3, 0xcc, sizeof(clsid3));
    hr = FUNC4((IUnknown*)&testpersist2, &clsid);
    FUNC3(hr == 0x8fff2222, "got 0x%08x\n", hr);
    FUNC3(FUNC0(&clsid, &clsid2) || FUNC1(FUNC0(&clsid, &clsid3)) /* win2k3 */,
        "got wrong clsid %s\n", FUNC5(&clsid));
}