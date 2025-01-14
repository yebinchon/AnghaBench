
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_16__ {int cbSize; int dwMask; scalar_t__ yHeight; scalar_t__ bPitchAndFamily; scalar_t__ bUnderlineType; int dwEffects; scalar_t__ crTextColor; int szFaceName; } ;
struct TYPE_15__ {scalar_t__ nOffset; TYPE_1__* pRun; } ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef int ME_TextEditor ;
typedef TYPE_1__ ME_DisplayItem ;
typedef TYPE_2__ ME_Cursor ;
typedef int DWORD ;
typedef TYPE_3__ CHARFORMAT2W ;


 int CFE_AUTOCOLOR ;
 int CFM_BOLD ;
 int CFM_COLOR ;
 int CFM_FACE ;
 int CFM_ITALIC ;
 int CFM_LINK ;
 int CFM_PROTECTED ;
 int CFM_SIZE ;
 int CFM_STRIKEOUT ;
 int CFM_SUPERSCRIPT ;
 int CFM_UNDERLINE ;
 int CFM_UNDERLINETYPE ;
 TYPE_1__* ME_FindItemBack (TYPE_1__*,scalar_t__) ;
 TYPE_1__* ME_FindItemFwd (TYPE_1__*,scalar_t__) ;
 int ME_GetRunCharFormat (int *,TYPE_1__*,TYPE_3__*) ;
 int ZeroMemory (TYPE_3__*,int) ;
 int assert (int) ;
 scalar_t__ diRun ;
 scalar_t__ diRunOrParagraph ;
 scalar_t__ lstrcmpW (int ,int ) ;

void ME_GetCharFormat(ME_TextEditor *editor, const ME_Cursor *from,
                      const ME_Cursor *to, CHARFORMAT2W *pFmt)
{
  ME_DisplayItem *run, *run_end;
  CHARFORMAT2W tmp;

  run = from->pRun;

  if (from->pRun == to->pRun && from->nOffset == to->nOffset)
  {
    if (!from->nOffset)
    {
      ME_DisplayItem *tmp_run = ME_FindItemBack(run, diRunOrParagraph);
      if (tmp_run->type == diRun) {
        ME_GetRunCharFormat(editor, tmp_run, pFmt);
        return;
      }
    }
    ME_GetRunCharFormat(editor, run, pFmt);
    return;
  }

  run_end = to->pRun;
  if (!to->nOffset)
    run_end = ME_FindItemBack(run_end, diRun);

  ME_GetRunCharFormat(editor, run, pFmt);

  if (run == run_end) return;

  do {

    DWORD dwAttribs = CFM_SIZE | CFM_FACE | CFM_COLOR | CFM_UNDERLINETYPE;
    DWORD dwEffects = CFM_BOLD | CFM_ITALIC | CFM_UNDERLINE | CFM_STRIKEOUT | CFM_PROTECTED | CFM_LINK | CFM_SUPERSCRIPT;

    run = ME_FindItemFwd(run, diRun);

    ZeroMemory(&tmp, sizeof(tmp));
    tmp.cbSize = sizeof(tmp);
    ME_GetRunCharFormat(editor, run, &tmp);

    assert((tmp.dwMask & dwAttribs) == dwAttribs);


    if (pFmt->yHeight != tmp.yHeight)
      pFmt->dwMask &= ~CFM_SIZE;
    if (pFmt->dwMask & CFM_FACE)
    {
      if (!(tmp.dwMask & CFM_FACE))
        pFmt->dwMask &= ~CFM_FACE;
      else if (lstrcmpW(pFmt->szFaceName, tmp.szFaceName) ||
          pFmt->bPitchAndFamily != tmp.bPitchAndFamily)
        pFmt->dwMask &= ~CFM_FACE;
    }
    if (pFmt->yHeight != tmp.yHeight)
      pFmt->dwMask &= ~CFM_SIZE;
    if (pFmt->bUnderlineType != tmp.bUnderlineType)
      pFmt->dwMask &= ~CFM_UNDERLINETYPE;
    if (pFmt->dwMask & CFM_COLOR)
    {
      if (!((pFmt->dwEffects&CFE_AUTOCOLOR) & (tmp.dwEffects&CFE_AUTOCOLOR)))
      {
        if (pFmt->crTextColor != tmp.crTextColor)
          pFmt->dwMask &= ~CFM_COLOR;
      }
    }

    pFmt->dwMask &= ~((pFmt->dwEffects ^ tmp.dwEffects) & dwEffects);
    pFmt->dwEffects = tmp.dwEffects;

  } while(run != run_end);
}
