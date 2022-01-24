#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_4__ {int dwMask; int* szFaceName; int yHeight; int yOffset; int dwEffects; scalar_t__ crTextColor; scalar_t__ bCharSet; } ;
typedef  TYPE_1__ CHARFORMAT2W ;

/* Variables and functions */
 int CFE_AUTOCOLOR ; 
 int /*<<< orphan*/  CFM_BOLD ; 
 int CFM_CHARSET ; 
 int CFM_COLOR ; 
 int CFM_FACE ; 
 int /*<<< orphan*/  CFM_HIDDEN ; 
 int /*<<< orphan*/  CFM_ITALIC ; 
 int CFM_OFFSET ; 
 int /*<<< orphan*/  CFM_PROTECTED ; 
 int CFM_SIZE ; 
 int /*<<< orphan*/  CFM_STRIKEOUT ; 
 int /*<<< orphan*/  CFM_UNDERLINE ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

void FUNC2(CHARFORMAT2W *pFmt, char buf[2048])
{
  /* FIXME only CHARFORMAT styles implemented */
  /* this function sucks, doesn't check for buffer overruns but it's "good enough" as for debug code */
  char *p;
  p = buf;
  p += FUNC1(p, "Font face:            ");
  if (pFmt->dwMask & CFM_FACE) {
    WCHAR *q = pFmt->szFaceName;
    while(*q) {
      *p++ = (*q > 255) ? '?' : *q;
      q++;      
    }       
  } else
    p += FUNC1(p, "N/A");

  if (pFmt->dwMask & CFM_SIZE)
    p += FUNC1(p, "\nFont size:            %d\n", pFmt->yHeight);
  else
    p += FUNC1(p, "\nFont size:            N/A\n");

  if (pFmt->dwMask & CFM_OFFSET)
    p += FUNC1(p, "Char offset:          %d\n", pFmt->yOffset);
  else
    p += FUNC1(p, "Char offset:          N/A\n");

  if (pFmt->dwMask & CFM_CHARSET)
    p += FUNC1(p, "Font charset:         %d\n", (int)pFmt->bCharSet);
  else
    p += FUNC1(p, "Font charset:         N/A\n");
    
  /* I'm assuming CFM_xxx and CFE_xxx are the same values, fortunately it IS true wrt used flags*/
  FUNC0(&p, "Font bold:", pFmt, CFM_BOLD);
  FUNC0(&p, "Font italic:", pFmt, CFM_ITALIC);
  FUNC0(&p, "Font underline:", pFmt, CFM_UNDERLINE);
  FUNC0(&p, "Font strikeout:", pFmt, CFM_STRIKEOUT);
  FUNC0(&p, "Hidden text:", pFmt, CFM_HIDDEN);
  p += FUNC1(p, "Text color:           ");
  if (pFmt->dwMask & CFM_COLOR)
  {
    if (pFmt->dwEffects & CFE_AUTOCOLOR)
      p += FUNC1(p, "auto\n");
    else
      p += FUNC1(p, "%06x\n", (int)pFmt->crTextColor);
  }
  else
    p += FUNC1(p, "N/A\n");
  FUNC0(&p, "Text protected:", pFmt, CFM_PROTECTED);
}