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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ DestLen; char const* Src; int CheckLen; int Return; int /*<<< orphan*/ * CheckDest; int /*<<< orphan*/  LineNo; int /*<<< orphan*/  Error; int /*<<< orphan*/  SrcLen; int /*<<< orphan*/  Flags; int /*<<< orphan*/  CodePage; scalar_t__ SamePointer; } ;
typedef  TYPE_1__ ENTRY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_BUFFER ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC5(const ENTRY *pEntry)
{
    int ret, i;
    WCHAR Buffer[MAX_BUFFER];
    DWORD Error;

    FUNC0(Buffer, sizeof(Buffer), 0x7F);
    FUNC3(0xBEAF);

    if (pEntry->DestLen == 0)
    {
        /* dest is NULL */
        ret = FUNC2(pEntry->CodePage, pEntry->Flags, pEntry->Src,
                                  pEntry->SrcLen, NULL, 0);
    }
    else
    {
        FUNC4(pEntry->DestLen >= pEntry->CheckLen - 1,
           "Line %d: DestLen was shorter than (CheckLen - 1)\n", pEntry->LineNo);

        if (pEntry->SamePointer)
        {
            /* src ptr == dest ptr */
            ret = FUNC2(pEntry->CodePage, pEntry->Flags,
                                      (const char *)Buffer, pEntry->SrcLen,
                                      Buffer, pEntry->DestLen);
        }
        else
        {
            /* src ptr != dest ptr */
            ret = FUNC2(pEntry->CodePage, pEntry->Flags,
                                      pEntry->Src, pEntry->SrcLen,
                                      Buffer, pEntry->DestLen);
        }
    }

    Error = FUNC1();

    /* check ret */
    FUNC4(ret == pEntry->Return, "Line %d: ret expected %d, got %d\n",
       pEntry->LineNo, pEntry->Return, ret);

    /* check error code */
    FUNC4(Error == pEntry->Error,
       "Line %d: Wrong last error. Expected %lu, got %lu\n",
       pEntry->LineNo, pEntry->Error, Error);

    if (pEntry->DestLen)
    {
        /* check buffer */
        for (i = 0; i < pEntry->CheckLen; ++i)
        {
            FUNC4(Buffer[i] == pEntry->CheckDest[i], "Line %d: Buffer[%d] expected %d, got %d\n",
               pEntry->LineNo, i, pEntry->CheckDest[i], Buffer[i]);
        }
    }
}