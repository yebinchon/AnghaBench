
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int LPSTR ;
typedef int INT ;
typedef int * HFONT ;
typedef int * HDC ;
typedef int DWORD ;
typedef int CHAR ;


 int ANSI_CHARSET ;
 int CLIP_DEFAULT_PRECIS ;
 int * CreateCompatibleDC (int *) ;
 int * CreateFontA (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int DumpCharacterFontData (int *) ;
 int DumpCharacterOnScreen (int *) ;
 int FALSE ;
 int FIXED_PITCH ;
 int FW_NORMAL ;
 int GetDeviceCaps (int *,int ) ;
 int GetLastError () ;
 int HEIGHT ;
 int LOGPIXELSY ;
 int MulDiv (int ,int ,int) ;
 int NONANTIALIASED_QUALITY ;
 int OUT_DEFAULT_PRECIS ;
 int PlotCharacter (int *,int *,int ,int ,int ,int *) ;
 int _getch () ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdout ;
 int system (char*) ;

__attribute__((used)) static void DumpFont(LPSTR FontName, INT FontSize, INT XOffset, INT YOffset)
{
    int iHeight;
    HDC hDC = ((void*)0);
    HFONT hFont = ((void*)0);

    DWORD BmpBits[HEIGHT];
    USHORT c;

    hDC = CreateCompatibleDC(((void*)0));
    if (!hDC)
    {
        fprintf(stderr, "CreateCompatibleDC failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    iHeight = -MulDiv(FontSize, GetDeviceCaps(hDC, LOGPIXELSY), 72);
    hFont = CreateFontA(iHeight, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE,
                        ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                        NONANTIALIASED_QUALITY, FIXED_PITCH, FontName);
    if (!hFont)
    {
        fprintf(stderr, "CreateFont failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    for (c = 0; c < 256; c++)
    {
        PlotCharacter(hDC, hFont, XOffset, YOffset, (CHAR)c, BmpBits);







        DumpCharacterFontData(BmpBits);

    }

Cleanup:
    if (hFont)
        DeleteObject(hFont);

    if (hDC)
        DeleteDC(hDC);
}
