#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pIID; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ MULTI_QI ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WineOOPTest ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IMoniker ; 
 int /*<<< orphan*/  IID_NULL ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGCLS_MULTIPLEUSE ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 int /*<<< orphan*/  create_instance_iid ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
    MULTI_QI qi_res = { IID_IMoniker };
    DWORD cookie;
    HRESULT hr;

    FUNC1(NULL);

    hr = FUNC2(&CLSID_WineOOPTest, (IUnknown *)&Test_ClassFactory,
                               CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &cookie);
    FUNC7(hr, "CoRegisterClassObject");

    create_instance_iid = IID_NULL;
    hr = FUNC0(&CLSID_WineOOPTest, NULL, CLSCTX_INPROC_SERVER, NULL, 1, &qi_res);
    FUNC6(hr == E_NOINTERFACE, "CoCreateInstanceEx failed: %08x\n", hr);
    FUNC6(FUNC5(&create_instance_iid, qi_res.pIID), "Unexpected CreateInstance iid %s\n",
       FUNC8(&create_instance_iid));

    hr = FUNC3(cookie);
    FUNC7(hr, "CoRevokeClassObject");

    FUNC4();
}