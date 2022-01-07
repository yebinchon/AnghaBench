
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;


typedef char WCHAR ;
struct TYPE_33__ {TYPE_2__* editor; } ;
struct TYPE_29__ {int dwMask; int wEffects; int dxOffset; int cTabCount; int* rgxTabs; } ;
struct TYPE_32__ {int nFlags; TYPE_5__ fmt; } ;
struct TYPE_27__ {int x; } ;
struct TYPE_31__ {int len; int nFlags; int nWidth; TYPE_3__ pt; TYPE_14__* style; } ;
struct TYPE_30__ {char const* szData; } ;
struct TYPE_28__ {int cx; int cy; } ;
struct TYPE_26__ {scalar_t__ bEmulateVersion10; scalar_t__ cPasswordMask; } ;
struct TYPE_25__ {int tmAscent; int tmDescent; } ;
struct TYPE_24__ {TYPE_1__ tm; } ;
typedef TYPE_4__ SIZE ;
typedef TYPE_5__ PARAFORMAT2 ;
typedef TYPE_6__ ME_String ;
typedef TYPE_7__ ME_Run ;
typedef TYPE_8__ ME_Paragraph ;
typedef TYPE_9__ ME_Context ;


 int MEPF_COMPLEX ;
 int MERF_ENDPARA ;
 int MERF_GRAPHICS ;
 int MERF_TAB ;
 int ME_DestroyString (TYPE_6__*) ;
 int ME_GetOLEObjectSize (TYPE_9__*,TYPE_7__*,TYPE_4__*) ;
 int ME_GetTextExtent (TYPE_9__*,char const*,int,TYPE_14__*,TYPE_4__*) ;
 TYPE_6__* ME_MakeStringR (scalar_t__,int) ;
 int ME_twips2pointsX (TYPE_9__*,int) ;
 int PFE_TABLE ;
 int PFM_TABLE ;
 char const* get_text (TYPE_7__*,int ) ;
 int lDefaultTab ;
 int min (int,int) ;

SIZE ME_GetRunSizeCommon(ME_Context *c, const ME_Paragraph *para, ME_Run *run, int nLen,
                         int startx, int *pAscent, int *pDescent)
{
  static const WCHAR spaceW[] = {' ',0};
  SIZE size;

  nLen = min( nLen, run->len );

  if (run->nFlags & MERF_ENDPARA)
  {
      nLen = min( nLen, 1 );
      ME_GetTextExtent(c, spaceW, nLen, run->style, &size);
  }
  else if (para->nFlags & MEPF_COMPLEX)
  {
      size.cx = run->nWidth;
  }
  else if (c->editor->cPasswordMask)
  {
    ME_String *szMasked = ME_MakeStringR(c->editor->cPasswordMask,nLen);
    ME_GetTextExtent(c, szMasked->szData, nLen,run->style, &size);
    ME_DestroyString(szMasked);
  }
  else
  {
    ME_GetTextExtent(c, get_text( run, 0 ), nLen, run->style, &size);
  }
  *pAscent = run->style->tm.tmAscent;
  *pDescent = run->style->tm.tmDescent;
  size.cy = *pAscent + *pDescent;

  if (run->nFlags & MERF_TAB)
  {
    int pos = 0, i = 0, ppos, shift = 0;
    const PARAFORMAT2 *pFmt = &para->fmt;

    if (c->editor->bEmulateVersion10 &&
        pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE)

      shift = pFmt->dxOffset * 2;
    do {
      if (i < pFmt->cTabCount)
      {


        if (i == pFmt->cTabCount -1)
          shift = shift >> 1;
        pos = shift + (pFmt->rgxTabs[i]&0x00FFFFFF);
        i++;
      }
      else
      {
        pos += lDefaultTab - (pos % lDefaultTab);
      }
      ppos = ME_twips2pointsX(c, pos);
      if (ppos > startx + run->pt.x) {
        size.cx = ppos - startx - run->pt.x;
        break;
      }
    } while(1);
    size.cy = *pAscent + *pDescent;
    return size;
  }
  if (run->nFlags & MERF_GRAPHICS)
  {
    ME_GetOLEObjectSize(c, run, &size);
    if (size.cy > *pAscent)
      *pAscent = size.cy;

    return size;
  }
  return size;
}
