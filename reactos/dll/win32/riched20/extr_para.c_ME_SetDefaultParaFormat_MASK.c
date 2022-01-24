#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  texthost; } ;
struct TYPE_6__ {int cbSize; int dwMask; int sStyle; int /*<<< orphan*/  wAlignment; int /*<<< orphan*/  bOutlineLevel; } ;
typedef  TYPE_1__ PARAFORMAT2 ;
typedef  int /*<<< orphan*/  PARAFORMAT ;
typedef  TYPE_2__ ME_TextEditor ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  PFA_LEFT ; 
 int PFM_ALIGNMENT ; 
 int PFM_ALL2 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(ME_TextEditor *editor, PARAFORMAT2 *pFmt)
{
    const PARAFORMAT2 *host_fmt;
    HRESULT hr;

    FUNC3(pFmt, sizeof(PARAFORMAT2));
    pFmt->cbSize = sizeof(PARAFORMAT2);
    pFmt->dwMask = PFM_ALL2;
    pFmt->wAlignment = PFA_LEFT;
    pFmt->sStyle = -1;
    pFmt->bOutlineLevel = TRUE;

    hr = FUNC1( editor->texthost, (const PARAFORMAT **)&host_fmt );
    if (FUNC2(hr))
    {
        /* Just use the alignment for now */
        if (host_fmt->dwMask & PFM_ALIGNMENT)
            pFmt->wAlignment = host_fmt->wAlignment;
        FUNC0( editor->texthost, (PARAFORMAT *)pFmt );
    }
}