
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int elfedv2 ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_8__ {int* lfFaceName; } ;
struct TYPE_9__ {scalar_t__* elfFullName; TYPE_1__ elfLogFont; } ;
struct TYPE_11__ {TYPE_2__ elfEnumLogfontEx; } ;
struct TYPE_10__ {int lfHeight; TYPE_4__* lfFaceName; int lfPitchAndFamily; int lfQuality; int lfClipPrecision; int lfOutPrecision; int lfCharSet; scalar_t__ lfStrikeOut; scalar_t__ lfUnderline; scalar_t__ lfItalic; int lfWeight; scalar_t__ lfOrientation; scalar_t__ lfEscapement; scalar_t__ lfWidth; } ;
typedef TYPE_3__ LOGFONTW ;
typedef scalar_t__ HFONT ;
typedef int ENUMLOGFONTEXW ;
typedef TYPE_4__ ENUMLOGFONTEXDVW ;
typedef int DWORD ;


 int CLIP_DEFAULT_PRECIS ;
 scalar_t__ CreateFontIndirectW (TYPE_3__*) ;
 int DEFAULT_CHARSET ;
 int DEFAULT_PITCH ;
 int FW_NORMAL ;
 int GetObjectW (scalar_t__,int,TYPE_4__*) ;
 int LF_FACESIZE ;
 int OUT_DEFAULT_PRECIS ;
 int PROOF_QUALITY ;
 int memset (TYPE_4__*,char,int) ;
 int ok (int,char*) ;

void
Test_CreateFontIndirectW(void)
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
    memset(logfont.lfFaceName, 'A', LF_FACESIZE * 2);
    hFont = CreateFontIndirectW(&logfont);
    ok(hFont != 0, "CreateFontIndirectW failed\n");

    memset(&elfedv2, 0, sizeof(elfedv2));
    ret = GetObjectW(hFont, sizeof(elfedv2), &elfedv2);
    ok(ret == sizeof(ENUMLOGFONTEXW) + 2*sizeof(DWORD), "\n");
    ok(elfedv2.elfEnumLogfontEx.elfLogFont.lfFaceName[LF_FACESIZE-1] == ((WCHAR)'A' << 8) + 'A', "\n");
    ok(elfedv2.elfEnumLogfontEx.elfFullName[0] == 0, "\n");

}
