#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {TYPE_3__* pPara; } ;
struct TYPE_8__ {int nCharOfs; TYPE_3__* next_para; } ;
struct TYPE_9__ {TYPE_1__ para; } ;
struct TYPE_10__ {TYPE_2__ member; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_3__ ME_DisplayItem ;
typedef  TYPE_4__ ME_Cursor ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_4__ const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HGLOBAL FUNC5(ME_TextEditor *editor, const ME_Cursor *start, int nChars)
{
    int pars = 0;
    WCHAR *data;
    HANDLE ret;
    ME_DisplayItem *para;
    int nEnd = FUNC3(start) + nChars;

    /* count paragraphs in range */
    para = start->pPara;
    while((para = para->member.para.next_para) &&
          para->member.para.nCharOfs <= nEnd)
        pars++;

    ret = FUNC0(GMEM_MOVEABLE, sizeof(WCHAR) * (nChars + pars + 1));
    data = FUNC1(ret);
    FUNC4(editor, data, nChars + pars, start, nChars, TRUE, FALSE);
    FUNC2(ret);
    return ret;
}