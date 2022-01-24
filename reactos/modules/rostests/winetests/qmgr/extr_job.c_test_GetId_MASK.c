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
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  test_job ; 
 int /*<<< orphan*/  test_jobId ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hres;
    GUID tmpId;

    hres = FUNC0(test_job, &tmpId);
    FUNC2(hres == S_OK, "GetId failed: %08x\n", hres);
    FUNC2(FUNC1(&tmpId, &test_jobId, sizeof tmpId) == 0, "Got incorrect GUID\n");
}