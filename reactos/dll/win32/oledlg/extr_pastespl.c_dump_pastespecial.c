
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef scalar_t__ ULONG_PTR ;
typedef size_t UINT ;
struct TYPE_7__ {int tymed; int lindex; int dwAspect; int ptd; int cfFormat; } ;
struct TYPE_9__ {int dwFlags; scalar_t__ lpstrResultText; scalar_t__ lpstrFormatName; TYPE_2__ fmtetc; } ;
struct TYPE_6__ {int cy; int cx; } ;
struct TYPE_8__ {size_t cPasteEntries; size_t cLinkTypes; size_t cClsidExclude; int * lpClsidExclude; int * arrLinkTypes; TYPE_5__* arrPasteEntries; TYPE_1__ sizel; int hMetaPict; int fLink; int nSelectedIndex; int lpSrcDataObj; int hResource; scalar_t__ lpszTemplate; int hInstance; int lCustData; int lpfnHook; scalar_t__ lpszCaption; int hWndOwner; int dwFlags; } ;
typedef TYPE_3__ OLEUIPASTESPECIALW ;
typedef size_t INT ;


 scalar_t__ IS_INTRESOURCE (scalar_t__) ;
 int TRACE (char*,size_t,TYPE_5__*,...) ;
 int debugstr_guid (int *) ;
 int debugstr_w (scalar_t__) ;
 int dump_ps_flags (int ) ;

__attribute__((used)) static void dump_pastespecial(const OLEUIPASTESPECIALW *ps)
{
    INT i;
    UINT j;

    dump_ps_flags(ps->dwFlags);
    TRACE("hwnd %p caption %s hook %p custdata %lx\n",
          ps->hWndOwner, debugstr_w(ps->lpszCaption), ps->lpfnHook, ps->lCustData);
    if(IS_INTRESOURCE(ps->lpszTemplate))
        TRACE("hinst %p template %04x hresource %p\n", ps->hInstance, (WORD)(ULONG_PTR)ps->lpszTemplate, ps->hResource);
    else
        TRACE("hinst %p template %s hresource %p\n", ps->hInstance, debugstr_w(ps->lpszTemplate), ps->hResource);
    TRACE("dataobj %p arrpasteent %p cpasteent %d arrlinktype %p clinktype %d\n",
          ps->lpSrcDataObj, ps->arrPasteEntries, ps->cPasteEntries,
          ps->arrLinkTypes, ps->cLinkTypes);
    TRACE("cclsidex %d lpclsidex %p nselect %d flink %d hmetapict %p size(%d,%d)\n",
          ps->cClsidExclude, ps->lpClsidExclude, ps->nSelectedIndex, ps->fLink,
          ps->hMetaPict, ps->sizel.cx, ps->sizel.cy);
    for(i = 0; i < ps->cPasteEntries; i++)
    {
        TRACE("arrPasteEntries[%d]: cFormat %08x pTargetDevice %p dwAspect %d lindex %d tymed %d\n",
              i, ps->arrPasteEntries[i].fmtetc.cfFormat, ps->arrPasteEntries[i].fmtetc.ptd,
              ps->arrPasteEntries[i].fmtetc.dwAspect, ps->arrPasteEntries[i].fmtetc.lindex,
              ps->arrPasteEntries[i].fmtetc.tymed);
        TRACE("\tformat name %s result text %s flags %04x\n", debugstr_w(ps->arrPasteEntries[i].lpstrFormatName),
              debugstr_w(ps->arrPasteEntries[i].lpstrResultText), ps->arrPasteEntries[i].dwFlags);
    }
    for(i = 0; i < ps->cLinkTypes; i++)
        TRACE("arrLinkTypes[%d] %08x\n", i, ps->arrLinkTypes[i]);
    for(j = 0; j < ps->cClsidExclude; j++)
        TRACE("lpClsidExclude[%u] %s\n", j, debugstr_guid(&ps->lpClsidExclude[j]));

}
