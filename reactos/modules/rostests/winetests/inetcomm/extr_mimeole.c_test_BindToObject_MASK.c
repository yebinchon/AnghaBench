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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IMimeMessage ;
typedef  int /*<<< orphan*/  IMimeBody ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  HBODY_ROOT ; 
 int /*<<< orphan*/  IID_IMimeBody ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    IMimeMessage *msg;
    IMimeBody *body;
    ULONG count;

    hr = FUNC4(NULL, &msg);
    FUNC5(hr == S_OK, "ret %08x\n", hr);

    hr = FUNC2(msg, HBODY_ROOT, TRUE, &count);
    FUNC5(hr == S_OK, "ret %08x\n", hr);
    FUNC5(count == 1, "got %d\n", count);

    hr = FUNC1(msg, HBODY_ROOT, &IID_IMimeBody, (void**)&body);
    FUNC5(hr == S_OK, "ret %08x\n", hr);
    FUNC0(body);

    FUNC3(msg);
}