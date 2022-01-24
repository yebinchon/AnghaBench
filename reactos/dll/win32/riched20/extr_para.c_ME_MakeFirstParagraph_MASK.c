#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_9__ ;
typedef  struct TYPE_48__   TYPE_8__ ;
typedef  struct TYPE_47__   TYPE_7__ ;
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_28__ ;
typedef  struct TYPE_40__   TYPE_1__ ;
typedef  struct TYPE_39__   TYPE_15__ ;
typedef  struct TYPE_38__   TYPE_14__ ;
typedef  struct TYPE_37__   TYPE_13__ ;
typedef  struct TYPE_36__   TYPE_12__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cf ;
typedef  char WCHAR ;
struct TYPE_48__ {int nCharOfs; TYPE_12__* prev_para; } ;
struct TYPE_49__ {TYPE_8__ para; } ;
struct TYPE_45__ {TYPE_12__* next_para; } ;
struct TYPE_46__ {TYPE_5__ para; } ;
struct TYPE_47__ {TYPE_6__ member; } ;
struct TYPE_43__ {TYPE_28__* next_para; TYPE_7__* prev_para; TYPE_2__* eop_run; int /*<<< orphan*/  text; } ;
struct TYPE_42__ {int len; TYPE_3__* para; scalar_t__ nCharOfs; } ;
struct TYPE_44__ {TYPE_3__ para; TYPE_2__ run; } ;
struct TYPE_41__ {TYPE_9__ member; } ;
struct TYPE_40__ {int cy; } ;
struct TYPE_39__ {int cbSize; int dwMask; int dwEffects; int yHeight; scalar_t__ wWeight; int /*<<< orphan*/  lcid; int /*<<< orphan*/  bCharSet; int /*<<< orphan*/  bPitchAndFamily; int /*<<< orphan*/  bUnderlineType; int /*<<< orphan*/  szFaceName; } ;
struct TYPE_38__ {int lfHeight; scalar_t__ lfWeight; int /*<<< orphan*/  lfCharSet; int /*<<< orphan*/  lfPitchAndFamily; scalar_t__ lfStrikeOut; scalar_t__ lfUnderline; scalar_t__ lfItalic; int /*<<< orphan*/  lfFaceName; } ;
struct TYPE_37__ {TYPE_1__ dpi; } ;
struct TYPE_36__ {TYPE_4__ member; } ;
struct TYPE_35__ {TYPE_28__* pLast; TYPE_7__* pFirst; int /*<<< orphan*/ * pDefaultStyle; } ;
struct TYPE_34__ {scalar_t__ bEmulateVersion10; int /*<<< orphan*/  texthost; TYPE_11__* pBuffer; } ;
typedef  TYPE_10__ ME_TextEditor ;
typedef  TYPE_11__ ME_TextBuffer ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  TYPE_12__ ME_DisplayItem ;
typedef  TYPE_13__ ME_Context ;
typedef  TYPE_14__ LOGFONTW ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  CHARFORMATW ;
typedef  TYPE_15__ CHARFORMAT2W ;

/* Variables and functions */
 int CFE_AUTOBACKCOLOR ; 
 int CFE_AUTOCOLOR ; 
 int CFE_BOLD ; 
 int CFE_ITALIC ; 
 int CFE_STRIKEOUT ; 
 int CFE_UNDERLINE ; 
 int CFM_ALLCAPS ; 
 int CFM_ANIMATION ; 
 int CFM_BACKCOLOR ; 
 int CFM_BOLD ; 
 int CFM_CHARSET ; 
 int CFM_COLOR ; 
 int CFM_DISABLED ; 
 int CFM_EMBOSS ; 
 int CFM_FACE ; 
 int CFM_HIDDEN ; 
 int CFM_IMPRINT ; 
 int CFM_ITALIC ; 
 int CFM_KERNING ; 
 int CFM_LCID ; 
 int CFM_LINK ; 
 int CFM_OFFSET ; 
 int CFM_OUTLINE ; 
 int CFM_PROTECTED ; 
 int CFM_REVAUTHOR ; 
 int CFM_REVISED ; 
 int CFM_SHADOW ; 
 int CFM_SIZE ; 
 int CFM_SMALLCAPS ; 
 int CFM_SPACING ; 
 int CFM_STRIKEOUT ; 
 int CFM_STYLE ; 
 int CFM_SUBSCRIPT ; 
 int CFM_UNDERLINE ; 
 int CFM_UNDERLINETYPE ; 
 int CFM_WEIGHT ; 
 int /*<<< orphan*/  CFU_UNDERLINE ; 
 scalar_t__ FW_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MERF_ENDPARA ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_28__*,TYPE_12__*) ; 
 TYPE_12__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*,TYPE_15__*) ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC12 (TYPE_15__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_15__*,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC17 (TYPE_10__*) ; 

void FUNC18(ME_TextEditor *editor)
{
  static const WCHAR cr_lf[] = {'\r','\n',0};
  ME_Context c;
  CHARFORMAT2W cf;
  const CHARFORMATW *host_cf;
  LOGFONTW lf;
  HFONT hf;
  ME_TextBuffer *text = editor->pBuffer;
  ME_DisplayItem *para = FUNC17(editor);
  ME_DisplayItem *run;
  ME_Style *style;
  int eol_len;

  FUNC6(&c, editor, FUNC4(editor->texthost));

  hf = FUNC1(SYSTEM_FONT);
  FUNC14(hf);
  FUNC0(hf, sizeof(LOGFONTW), &lf);
  FUNC12(&cf, sizeof(cf));
  cf.cbSize = sizeof(cf);
  cf.dwMask = CFM_ANIMATION|CFM_BACKCOLOR|CFM_CHARSET|CFM_COLOR|CFM_FACE|CFM_KERNING|CFM_LCID|CFM_OFFSET;
  cf.dwMask |= CFM_REVAUTHOR|CFM_SIZE|CFM_SPACING|CFM_STYLE|CFM_UNDERLINETYPE|CFM_WEIGHT;
  cf.dwMask |= CFM_ALLCAPS|CFM_BOLD|CFM_DISABLED|CFM_EMBOSS|CFM_HIDDEN;
  cf.dwMask |= CFM_IMPRINT|CFM_ITALIC|CFM_LINK|CFM_OUTLINE|CFM_PROTECTED;
  cf.dwMask |= CFM_REVISED|CFM_SHADOW|CFM_SMALLCAPS|CFM_STRIKEOUT;
  cf.dwMask |= CFM_SUBSCRIPT|CFM_UNDERLINE;
  
  cf.dwEffects = CFE_AUTOCOLOR | CFE_AUTOBACKCOLOR;
  FUNC16(cf.szFaceName, lf.lfFaceName);
  /* Convert system font height from logical units to twips for cf.yHeight */
  cf.yHeight = (lf.lfHeight * 72 * 1440) / (c.dpi.cy * c.dpi.cy);
  if (lf.lfWeight > FW_NORMAL) cf.dwEffects |= CFE_BOLD;
  cf.wWeight = lf.lfWeight;
  if (lf.lfItalic) cf.dwEffects |= CFE_ITALIC;
  if (lf.lfUnderline) cf.dwEffects |= CFE_UNDERLINE;
  cf.bUnderlineType = CFU_UNDERLINE;
  if (lf.lfStrikeOut) cf.dwEffects |= CFE_STRIKEOUT;
  cf.bPitchAndFamily = lf.lfPitchAndFamily;
  cf.bCharSet = lf.lfCharSet;
  cf.lcid = FUNC2();

  style = FUNC10(&cf);
  text->pDefaultStyle = style;

  if (FUNC3(editor->texthost, &host_cf) == S_OK)
  {
    FUNC12(&cf, sizeof(cf));
    cf.cbSize = sizeof(cf);
    FUNC15(&cf, (CHARFORMAT2W *)host_cf);
    FUNC11(editor, &cf);
  }

  eol_len = editor->bEmulateVersion10 ? 2 : 1;
  para->member.para.text = FUNC9( cr_lf, eol_len );

  run = FUNC8(style, MERF_ENDPARA);
  run->member.run.nCharOfs = 0;
  run->member.run.len = eol_len;
  run->member.run.para = &para->member.para;

  para->member.para.eop_run = &run->member.run;

  FUNC7(text->pLast, para);
  FUNC7(text->pLast, run);
  para->member.para.prev_para = text->pFirst;
  para->member.para.next_para = text->pLast;
  text->pFirst->member.para.next_para = para;
  text->pLast->member.para.prev_para = para;

  text->pLast->member.para.nCharOfs = editor->bEmulateVersion10 ? 2 : 1;

  FUNC13(editor, para);
  FUNC5(&c);
}