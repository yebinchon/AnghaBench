
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_24__ {scalar_t__ fRTL; } ;
struct TYPE_23__ {TYPE_2__* editor; } ;
struct TYPE_22__ {int nFlags; int nWidth; int style; int len; TYPE_8__ script_analysis; int advances; int vis_attrs; int clusters; int num_glyphs; TYPE_1__* para; } ;
struct TYPE_21__ {int * szData; } ;
struct TYPE_20__ {int cx; } ;
struct TYPE_19__ {scalar_t__ cPasswordMask; } ;
struct TYPE_18__ {int nFlags; } ;
typedef TYPE_3__ SIZE ;
typedef TYPE_4__ ME_String ;
typedef TYPE_5__ ME_Run ;
typedef TYPE_6__ ME_Context ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int MEPF_COMPLEX ;
 int MERF_ENDPARA ;
 int MERF_GRAPHICS ;
 int ME_DestroyString (TYPE_4__*) ;
 int ME_GetOLEObjectSize (TYPE_6__*,TYPE_5__*,TYPE_3__*) ;
 int ME_GetTextExtent (TYPE_6__*,int *,int,int ,TYPE_3__*) ;
 TYPE_4__* ME_MakeStringR (scalar_t__,int ) ;
 int ScriptCPtoX (int,int ,int ,int ,int ,int ,int ,TYPE_8__*,int*) ;
 int * get_text (TYPE_5__*,int ) ;

int ME_PointFromCharContext(ME_Context *c, ME_Run *pRun, int nOffset, BOOL visual_order)
{
  SIZE size;
  ME_String *mask_text = ((void*)0);
  WCHAR *str;

  if (pRun->nFlags & MERF_GRAPHICS)
  {
    if (nOffset)
      ME_GetOLEObjectSize(c, pRun, &size);
    return nOffset != 0;
  } else if (pRun->nFlags & MERF_ENDPARA) {
    nOffset = 0;
  }

  if (pRun->para->nFlags & MEPF_COMPLEX)
  {
      int x;
      ScriptCPtoX( nOffset, FALSE, pRun->len, pRun->num_glyphs, pRun->clusters,
                   pRun->vis_attrs, pRun->advances, &pRun->script_analysis, &x );
      if (visual_order && pRun->script_analysis.fRTL) x = pRun->nWidth - x - 1;
      return x;
  }
  if (c->editor->cPasswordMask)
  {
    mask_text = ME_MakeStringR(c->editor->cPasswordMask, pRun->len);
    str = mask_text->szData;
  }
  else
      str = get_text( pRun, 0 );

  ME_GetTextExtent(c, str, nOffset, pRun->style, &size);
  ME_DestroyString( mask_text );
  return size.cx;
}
