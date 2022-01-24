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
struct promptdisk_params {int* PathRequiredSize; int PathBufferSize; int /*<<< orphan*/  PathBuffer; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  DPROMPT_BUFFERTOOSMALL ; 
 int /*<<< orphan*/  DPROMPT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IDC_PATH ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(HWND hwnd, struct promptdisk_params *params)
{
    int requiredSize;
    WCHAR aux[MAX_PATH];
    FUNC2(FUNC1(hwnd, IDC_PATH), aux, MAX_PATH);
    requiredSize = FUNC6(aux)+1;

    if(params->PathRequiredSize)
    {
        *params->PathRequiredSize = requiredSize;
        FUNC3("returning PathRequiredSize=%d\n",*params->PathRequiredSize);
    }
    if(!params->PathBuffer)
    {
        FUNC0(hwnd, NO_ERROR);
        return;
    }
    if(requiredSize > params->PathBufferSize)
    {
        FUNC0(hwnd, DPROMPT_BUFFERTOOSMALL);
        return;
    }
    FUNC5(params->PathBuffer, aux);
    FUNC3("returning PathBuffer=%s\n", FUNC4(params->PathBuffer));
    FUNC0(hwnd, DPROMPT_SUCCESS);
}