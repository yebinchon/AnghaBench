
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int lfHeight; int lfItalic; int lfUnderline; int lfStrikeOut; int lfCharSet; int lfPitchAndFamily; int lfWeight; int lfFaceName; } ;
struct TYPE_7__ {int dwEffects; int dwMask; scalar_t__ bUnderlineType; int bCharSet; int bPitchAndFamily; int wWeight; int yHeight; int szFaceName; } ;
struct TYPE_8__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ ME_Style ;
typedef int ME_Context ;
typedef TYPE_3__ LOGFONTW ;


 int CFE_LINK ;
 int CFM_BOLD ;
 int CFM_CHARSET ;
 int CFM_FACE ;
 int CFM_ITALIC ;
 int CFM_STRIKEOUT ;
 int CFM_SUBSCRIPT ;
 int CFM_SUPERSCRIPT ;
 int CFM_UNDERLINE ;
 int CFM_WEIGHT ;
 scalar_t__ CFU_CF1UNDERLINE ;
 int FW_BOLD ;
 int FW_NORMAL ;
 int ME_twips2pointsY (int *,int ) ;
 int ZeroMemory (TYPE_3__*,int) ;
 int lstrcpyW (int ,int ) ;

__attribute__((used)) static void
ME_LogFontFromStyle(ME_Context* c, LOGFONTW *lf, const ME_Style *s)
{
  ZeroMemory(lf, sizeof(LOGFONTW));
  lstrcpyW(lf->lfFaceName, s->fmt.szFaceName);

  lf->lfHeight = ME_twips2pointsY(c, -s->fmt.yHeight);

  lf->lfWeight = FW_NORMAL;
  if (s->fmt.dwEffects & s->fmt.dwMask & CFM_BOLD)
    lf->lfWeight = FW_BOLD;
  if (s->fmt.dwMask & CFM_WEIGHT)
    lf->lfWeight = s->fmt.wWeight;
  if (s->fmt.dwEffects & s->fmt.dwMask & CFM_ITALIC)
    lf->lfItalic = 1;
  if ((s->fmt.dwEffects & s->fmt.dwMask & CFM_UNDERLINE) &&
      !(s->fmt.dwEffects & CFE_LINK) &&
      s->fmt.bUnderlineType == CFU_CF1UNDERLINE)
    lf->lfUnderline = 1;
  if (s->fmt.dwEffects & s->fmt.dwMask & CFM_STRIKEOUT)
    lf->lfStrikeOut = 1;
  if (s->fmt.dwEffects & s->fmt.dwMask & (CFM_SUBSCRIPT|CFM_SUPERSCRIPT))
    lf->lfHeight = (lf->lfHeight*2)/3;

  if (s->fmt.dwMask & CFM_FACE)
    lf->lfPitchAndFamily = s->fmt.bPitchAndFamily;
  if (s->fmt.dwMask & CFM_CHARSET)
    lf->lfCharSet = s->fmt.bCharSet;
}
