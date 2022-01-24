#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa ;
struct TYPE_6__ {int member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_5__ {int /*<<< orphan*/ * hStdError; int /*<<< orphan*/ * hStdOutput; int /*<<< orphan*/ * hStdInput; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  scalar_t__ PHANDLE ;
typedef  void* HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void**,void**,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC3(STARTUPINFOA *psi, PHANDLE phInputWrite,
                               PHANDLE phOutputRead, PHANDLE phErrorRead)
{
    HANDLE hInputRead = NULL, hInputWriteTmp = NULL;
    HANDLE hOutputReadTmp = NULL, hOutputWrite = NULL;
    HANDLE hErrorReadTmp = NULL, hErrorWrite = NULL;
    SECURITY_ATTRIBUTES sa = { sizeof(sa), NULL, &TRUE };

    psi->hStdInput = NULL;
    psi->hStdOutput = NULL;
    psi->hStdError = NULL;

    if (phInputWrite)
    {
        if (FUNC1(&hInputRead, &hInputWriteTmp, &sa, 0))
        {
            if (!FUNC2(hInputWriteTmp, phInputWrite, FALSE))
                goto failed;

            FUNC0(hInputWriteTmp);
        }
        else
            goto failed;
    }

    if (phOutputRead)
    {
        if (FUNC1(&hOutputReadTmp, &hOutputWrite, &sa, 0))
        {
            if (!FUNC2(hOutputReadTmp, phOutputRead, FALSE))
                goto failed;

            FUNC0(hOutputReadTmp);
        }
        else
            goto failed;
    }

    if (phOutputRead && phOutputRead == phErrorRead)
    {
        if (!FUNC2(hOutputWrite, &hErrorWrite, TRUE))
            goto failed;
    }
    else if (phErrorRead)
    {
        if (FUNC1(&hErrorReadTmp, &hErrorWrite, &sa, 0))
        {
            if (!FUNC2(hErrorReadTmp, phErrorRead, FALSE))
                goto failed;
            FUNC0(hErrorReadTmp);
        }
        else
            goto failed;
    }

    if (phInputWrite)
        psi->hStdInput = hInputRead;
    if (phOutputRead)
        psi->hStdOutput = hOutputWrite;
    if (phErrorRead)
        psi->hStdError = hErrorWrite;

    return TRUE;

failed:
    FUNC0(hInputRead);
    FUNC0(hInputWriteTmp);
    FUNC0(hOutputReadTmp);
    FUNC0(hOutputWrite);
    FUNC0(hErrorReadTmp);
    FUNC0(hErrorWrite);
    return FALSE;
}