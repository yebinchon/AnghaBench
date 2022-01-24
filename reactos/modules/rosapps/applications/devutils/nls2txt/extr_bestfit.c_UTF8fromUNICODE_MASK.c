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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int* PSIZE_T ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static CHAR*
FUNC2(const WCHAR *pszInput, PSIZE_T Size)
{
    ULONG Length;
    CHAR *pszOutput;

    if (!pszInput || !Size) return NULL;

    Length = FUNC0(CP_UTF8, 0, pszInput, -1, NULL, 0, NULL, NULL);

    *Size = Length * sizeof(CHAR);

    pszOutput = (CHAR *) FUNC1(*Size);
    if (pszOutput)
    {
        FUNC0(CP_UTF8, 0, pszInput, -1, pszOutput, Length, NULL, NULL);
    }

    return pszOutput;
}