#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_15__ ;
typedef  struct TYPE_27__   TYPE_13__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_37__ {unsigned int nFontTblLen; unsigned int nColorTblLen; int* colortbl; TYPE_10__* fonttbl; } ;
struct TYPE_30__ {TYPE_15__* style; } ;
struct TYPE_29__ {scalar_t__ wNumbering; } ;
struct TYPE_36__ {TYPE_2__ para_num; TYPE_1__ fmt; } ;
struct TYPE_34__ {TYPE_8__* para; TYPE_15__* style; } ;
struct TYPE_26__ {scalar_t__ width; int /*<<< orphan*/  colorRef; } ;
struct TYPE_32__ {TYPE_12__ right; TYPE_12__ bottom; TYPE_12__ left; TYPE_12__ top; } ;
struct TYPE_33__ {TYPE_4__ border; } ;
struct TYPE_31__ {TYPE_11__* pCell; } ;
struct TYPE_35__ {TYPE_6__ run; TYPE_5__ cell; TYPE_3__ para; } ;
struct TYPE_27__ {int dwMask; int dwEffects; int /*<<< orphan*/  crBackColor; int /*<<< orphan*/  crTextColor; } ;
struct TYPE_28__ {TYPE_13__ fmt; } ;
struct TYPE_25__ {TYPE_7__ member; } ;
struct TYPE_24__ {scalar_t__ bCharSet; int /*<<< orphan*/  szFaceName; } ;
typedef  TYPE_8__ ME_Paragraph ;
typedef  TYPE_9__ ME_OutStream ;
typedef  TYPE_10__ ME_FontTableItem ;
typedef  TYPE_11__ ME_DisplayItem ;
typedef  TYPE_12__ ME_Border ;
typedef  TYPE_13__ CHARFORMAT2W ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CFE_AUTOBACKCOLOR ; 
 int CFE_AUTOCOLOR ; 
 int CFM_BACKCOLOR ; 
 int CFM_COLOR ; 
 scalar_t__ DEFAULT_CHARSET ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_11__* FUNC0 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_15__*) ; 
 int /*<<< orphan*/  diRun ; 

__attribute__((used)) static BOOL
FUNC5(ME_OutStream *pStream, ME_DisplayItem *pFirstRun,
                               ME_DisplayItem *pLastRun)
{
  ME_DisplayItem *item = pFirstRun;
  ME_FontTableItem *table = pStream->fonttbl;
  unsigned int i;
  ME_DisplayItem *pCell = NULL;
  ME_Paragraph *prev_para = NULL;

  do {
    CHARFORMAT2W *fmt = &item->member.run.style->fmt;

    FUNC4( pStream, item->member.run.style );

    if (fmt->dwMask & CFM_COLOR && !(fmt->dwEffects & CFE_AUTOCOLOR))
      FUNC3( pStream, fmt->crTextColor );
    if (fmt->dwMask & CFM_BACKCOLOR && !(fmt->dwEffects & CFE_AUTOBACKCOLOR))
      FUNC3( pStream, fmt->crBackColor );

    if (item->member.run.para != prev_para)
    {
      /* check for any para numbering text */
      if (item->member.run.para->fmt.wNumbering)
        FUNC4( pStream, item->member.run.para->para_num.style );

      if ((pCell = item->member.para.pCell))
      {
        ME_Border* borders[4] = { &pCell->member.cell.border.top,
                                  &pCell->member.cell.border.left,
                                  &pCell->member.cell.border.bottom,
                                  &pCell->member.cell.border.right };
        for (i = 0; i < 4; i++)
          if (borders[i]->width > 0)
            FUNC3( pStream, borders[i]->colorRef );
      }

      prev_para = item->member.run.para;
    }

    if (item == pLastRun)
      break;
    item = FUNC0(item, diRun);
  } while (item);

  if (!FUNC1(pStream, "{\\fonttbl"))
    return FALSE;
  
  for (i = 0; i < pStream->nFontTblLen; i++) {
    if (table[i].bCharSet != DEFAULT_CHARSET) {
      if (!FUNC1(pStream, "{\\f%u\\fcharset%u ", i, table[i].bCharSet))
        return FALSE;
    } else {
      if (!FUNC1(pStream, "{\\f%u ", i))
        return FALSE;
    }
    if (!FUNC2(pStream, table[i].szFaceName, -1))
      return FALSE;
    if (!FUNC1(pStream, ";}"))
      return FALSE;
  }
  if (!FUNC1(pStream, "}\r\n"))
    return FALSE;

  /* Output the color table */
  if (!FUNC1(pStream, "{\\colortbl;")) return FALSE; /* first entry is auto-color */
  for (i = 1; i < pStream->nColorTblLen; i++)
  {
    if (!FUNC1(pStream, "\\red%u\\green%u\\blue%u;", pStream->colortbl[i] & 0xFF,
                           (pStream->colortbl[i] >> 8) & 0xFF, (pStream->colortbl[i] >> 16) & 0xFF))
      return FALSE;
  }
  if (!FUNC1(pStream, "}\r\n")) return FALSE;

  return TRUE;
}