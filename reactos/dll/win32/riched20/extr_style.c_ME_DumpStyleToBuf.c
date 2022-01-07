
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int dwMask; int* szFaceName; int yHeight; int yOffset; int dwEffects; scalar_t__ crTextColor; scalar_t__ bCharSet; } ;
typedef TYPE_1__ CHARFORMAT2W ;


 int CFE_AUTOCOLOR ;
 int CFM_BOLD ;
 int CFM_CHARSET ;
 int CFM_COLOR ;
 int CFM_FACE ;
 int CFM_HIDDEN ;
 int CFM_ITALIC ;
 int CFM_OFFSET ;
 int CFM_PROTECTED ;
 int CFM_SIZE ;
 int CFM_STRIKEOUT ;
 int CFM_UNDERLINE ;
 int ME_DumpStyleEffect (char**,char*,TYPE_1__*,int ) ;
 int sprintf (char*,char*,...) ;

void ME_DumpStyleToBuf(CHARFORMAT2W *pFmt, char buf[2048])
{


  char *p;
  p = buf;
  p += sprintf(p, "Font face:            ");
  if (pFmt->dwMask & CFM_FACE) {
    WCHAR *q = pFmt->szFaceName;
    while(*q) {
      *p++ = (*q > 255) ? '?' : *q;
      q++;
    }
  } else
    p += sprintf(p, "N/A");

  if (pFmt->dwMask & CFM_SIZE)
    p += sprintf(p, "\nFont size:            %d\n", pFmt->yHeight);
  else
    p += sprintf(p, "\nFont size:            N/A\n");

  if (pFmt->dwMask & CFM_OFFSET)
    p += sprintf(p, "Char offset:          %d\n", pFmt->yOffset);
  else
    p += sprintf(p, "Char offset:          N/A\n");

  if (pFmt->dwMask & CFM_CHARSET)
    p += sprintf(p, "Font charset:         %d\n", (int)pFmt->bCharSet);
  else
    p += sprintf(p, "Font charset:         N/A\n");


  ME_DumpStyleEffect(&p, "Font bold:", pFmt, CFM_BOLD);
  ME_DumpStyleEffect(&p, "Font italic:", pFmt, CFM_ITALIC);
  ME_DumpStyleEffect(&p, "Font underline:", pFmt, CFM_UNDERLINE);
  ME_DumpStyleEffect(&p, "Font strikeout:", pFmt, CFM_STRIKEOUT);
  ME_DumpStyleEffect(&p, "Hidden text:", pFmt, CFM_HIDDEN);
  p += sprintf(p, "Text color:           ");
  if (pFmt->dwMask & CFM_COLOR)
  {
    if (pFmt->dwEffects & CFE_AUTOCOLOR)
      p += sprintf(p, "auto\n");
    else
      p += sprintf(p, "%06x\n", (int)pFmt->crTextColor);
  }
  else
    p += sprintf(p, "N/A\n");
  ME_DumpStyleEffect(&p, "Text protected:", pFmt, CFM_PROTECTED);
}
