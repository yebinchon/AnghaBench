#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  elfedv2 ;
typedef  int WCHAR ;
typedef  int ULONG ;
struct TYPE_8__ {int* lfFaceName; } ;
struct TYPE_9__ {scalar_t__* elfFullName; TYPE_1__ elfLogFont; } ;
struct TYPE_11__ {TYPE_2__ elfEnumLogfontEx; } ;
struct TYPE_10__ {int lfHeight; TYPE_4__* lfFaceName; int /*<<< orphan*/  lfPitchAndFamily; int /*<<< orphan*/  lfQuality; int /*<<< orphan*/  lfClipPrecision; int /*<<< orphan*/  lfOutPrecision; int /*<<< orphan*/  lfCharSet; scalar_t__ lfStrikeOut; scalar_t__ lfUnderline; scalar_t__ lfItalic; int /*<<< orphan*/  lfWeight; scalar_t__ lfOrientation; scalar_t__ lfEscapement; scalar_t__ lfWidth; } ;
typedef  TYPE_3__ LOGFONTW ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  ENUMLOGFONTEXW ;
typedef  TYPE_4__ ENUMLOGFONTEXDVW ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int /*<<< orphan*/  DEFAULT_PITCH ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int FUNC1 (scalar_t__,int,TYPE_4__*) ; 
 int LF_FACESIZE ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  PROOF_QUALITY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void
FUNC4(void)
{
    LOGFONTW logfont;
    HFONT hFont;
    ULONG ret;
    ENUMLOGFONTEXDVW elfedv2;

    logfont.lfHeight = 12;
    logfont.lfWidth = 0;
    logfont.lfEscapement = 0;
    logfont.lfOrientation = 0;
    logfont.lfWeight = FW_NORMAL;
    logfont.lfItalic = 0;
    logfont.lfUnderline = 0;
    logfont.lfStrikeOut = 0;
    logfont.lfCharSet = DEFAULT_CHARSET;
    logfont.lfOutPrecision = OUT_DEFAULT_PRECIS;
    logfont.lfClipPrecision = CLIP_DEFAULT_PRECIS;
    logfont.lfQuality = PROOF_QUALITY;
    logfont.lfPitchAndFamily = DEFAULT_PITCH;
    FUNC2(logfont.lfFaceName, 'A', LF_FACESIZE * 2);
    hFont = FUNC0(&logfont);
    FUNC3(hFont != 0, "CreateFontIndirectW failed\n");

    FUNC2(&elfedv2, 0, sizeof(elfedv2));
    ret = FUNC1(hFont, sizeof(elfedv2), &elfedv2);
    FUNC3(ret == sizeof(ENUMLOGFONTEXW) + 2*sizeof(DWORD), "\n");
    FUNC3(elfedv2.elfEnumLogfontEx.elfLogFont.lfFaceName[LF_FACESIZE-1] == ((WCHAR)'A' << 8) + 'A', "\n");
    FUNC3(elfedv2.elfEnumLogfontEx.elfFullName[0] == 0, "\n");
    /* Theres a bunch of data in elfFullName ... */
}