#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ ULONG_PTR ;
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  tymed; int /*<<< orphan*/  lindex; int /*<<< orphan*/  dwAspect; int /*<<< orphan*/  ptd; int /*<<< orphan*/  cfFormat; } ;
struct TYPE_9__ {int /*<<< orphan*/  dwFlags; scalar_t__ lpstrResultText; scalar_t__ lpstrFormatName; TYPE_2__ fmtetc; } ;
struct TYPE_6__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct TYPE_8__ {size_t cPasteEntries; size_t cLinkTypes; size_t cClsidExclude; int /*<<< orphan*/ * lpClsidExclude; int /*<<< orphan*/ * arrLinkTypes; TYPE_5__* arrPasteEntries; TYPE_1__ sizel; int /*<<< orphan*/  hMetaPict; int /*<<< orphan*/  fLink; int /*<<< orphan*/  nSelectedIndex; int /*<<< orphan*/  lpSrcDataObj; int /*<<< orphan*/  hResource; scalar_t__ lpszTemplate; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lCustData; int /*<<< orphan*/  lpfnHook; scalar_t__ lpszCaption; int /*<<< orphan*/  hWndOwner; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_3__ OLEUIPASTESPECIALW ;
typedef  size_t INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,TYPE_5__*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const OLEUIPASTESPECIALW *ps)
{
    INT i;
    UINT j;

    FUNC4(ps->dwFlags);
    FUNC1("hwnd %p caption %s hook %p custdata %lx\n",
          ps->hWndOwner, FUNC3(ps->lpszCaption), ps->lpfnHook, ps->lCustData);
    if(FUNC0(ps->lpszTemplate))
        FUNC1("hinst %p template %04x hresource %p\n", ps->hInstance, (WORD)(ULONG_PTR)ps->lpszTemplate, ps->hResource);
    else
        FUNC1("hinst %p template %s hresource %p\n", ps->hInstance, FUNC3(ps->lpszTemplate), ps->hResource);
    FUNC1("dataobj %p arrpasteent %p cpasteent %d arrlinktype %p clinktype %d\n",
          ps->lpSrcDataObj, ps->arrPasteEntries, ps->cPasteEntries,
          ps->arrLinkTypes, ps->cLinkTypes);
    FUNC1("cclsidex %d lpclsidex %p nselect %d flink %d hmetapict %p size(%d,%d)\n",
          ps->cClsidExclude, ps->lpClsidExclude, ps->nSelectedIndex, ps->fLink,
          ps->hMetaPict, ps->sizel.cx, ps->sizel.cy);
    for(i = 0; i < ps->cPasteEntries; i++)
    {
        FUNC1("arrPasteEntries[%d]: cFormat %08x pTargetDevice %p dwAspect %d lindex %d tymed %d\n",
              i, ps->arrPasteEntries[i].fmtetc.cfFormat, ps->arrPasteEntries[i].fmtetc.ptd,
              ps->arrPasteEntries[i].fmtetc.dwAspect, ps->arrPasteEntries[i].fmtetc.lindex,
              ps->arrPasteEntries[i].fmtetc.tymed);
        FUNC1("\tformat name %s result text %s flags %04x\n", FUNC3(ps->arrPasteEntries[i].lpstrFormatName),
              FUNC3(ps->arrPasteEntries[i].lpstrResultText), ps->arrPasteEntries[i].dwFlags);
    }
    for(i = 0; i < ps->cLinkTypes; i++)
        FUNC1("arrLinkTypes[%d] %08x\n", i, ps->arrLinkTypes[i]);
    for(j = 0; j < ps->cClsidExclude; j++)
        FUNC1("lpClsidExclude[%u] %s\n", j, FUNC2(&ps->lpClsidExclude[j]));

}