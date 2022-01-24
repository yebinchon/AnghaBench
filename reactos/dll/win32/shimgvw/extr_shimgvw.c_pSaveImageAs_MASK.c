#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szSaveFileName ;
typedef  int /*<<< orphan*/  sfn ;
struct TYPE_12__ {int lStructSize; int nMaxFile; int Flags; size_t nFilterIndex; int /*<<< orphan*/  Clsid; int /*<<< orphan*/  FormatID; int /*<<< orphan*/  FilenameExtension; int /*<<< orphan*/  FormatDescription; struct TYPE_12__* lpstrFilter; struct TYPE_12__* lpstrFile; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndOwner; } ;
typedef  TYPE_1__ WCHAR ;
typedef  size_t UINT ;
typedef  TYPE_1__ OPENFILENAMEW ;
typedef  TYPE_1__ ImageCodecInfo ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  ANIME_TIMER_ID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int OFN_HIDEREADONLY ; 
 int OFN_OVERWRITEPROMPT ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,size_t,TYPE_1__**,size_t*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  hDispWnd ; 
 int /*<<< orphan*/  hInstance ; 
 int /*<<< orphan*/  image ; 
 scalar_t__ m_pDelayItem ; 
 TYPE_1__* FUNC12 (size_t) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(HWND hwnd)
{
    OPENFILENAMEW sfn;
    ImageCodecInfo *codecInfo;
    WCHAR szSaveFileName[MAX_PATH];
    WCHAR *szFilterMask;
    GUID rawFormat;
    UINT num;
    UINT size;
    size_t sizeRemain;
    UINT j;
    WCHAR *c;

    FUNC2(&num, &size);
    codecInfo = FUNC12(size);
    if (!codecInfo)
    {
        FUNC0("malloc() failed in pSaveImageAs()\n");
        return;
    }

    FUNC1(num, size, codecInfo);
    FUNC3(image, &rawFormat);

    sizeRemain = 0;

    for (j = 0; j < num; ++j)
    {
        // Every pair needs space for the Description, twice the Extensions, 1 char for the space, 2 for the braces and 2 for the NULL terminators.
        sizeRemain = sizeRemain + (((FUNC13(codecInfo[j].FormatDescription) + (FUNC13(codecInfo[j].FilenameExtension) * 2) + 5) * sizeof(WCHAR)));
    }

    /* Add two more chars for the last terminator */
    sizeRemain = sizeRemain + (sizeof(WCHAR) * 2);

    szFilterMask = FUNC12(sizeRemain);
    if (!szFilterMask)
    {
        FUNC0("cannot allocate memory for filter mask in pSaveImageAs()");
        FUNC11(codecInfo);
        return;
    }

    FUNC10(szSaveFileName, sizeof(szSaveFileName));
    FUNC10(szFilterMask, sizeRemain);
    FUNC10(&sfn, sizeof(sfn));
    sfn.lStructSize = sizeof(sfn);
    sfn.hwndOwner   = hwnd;
    sfn.hInstance   = hInstance;
    sfn.lpstrFile   = szSaveFileName;
    sfn.lpstrFilter = szFilterMask;
    sfn.nMaxFile    = MAX_PATH;
    sfn.Flags       = OFN_OVERWRITEPROMPT | OFN_HIDEREADONLY;

    c = szFilterMask;

    for (j = 0; j < num; ++j)
    {
        FUNC9(c, sizeRemain, &c, &sizeRemain, 0, L"%ls (%ls)", codecInfo[j].FormatDescription, codecInfo[j].FilenameExtension);

        /* Skip the NULL character */
        c++;
        sizeRemain -= sizeof(*c);

        FUNC9(c, sizeRemain, &c, &sizeRemain, 0, L"%ls", codecInfo[j].FilenameExtension);

        /* Skip the NULL character */
        c++;
        sizeRemain -= sizeof(*c);

        if (FUNC6(&rawFormat, &codecInfo[j].FormatID) != FALSE)
        {
            sfn.nFilterIndex = j + 1;
        }
    }

    if (FUNC5(&sfn))
    {
        if (m_pDelayItem)
        {
            /* save animation */
            FUNC7(hDispWnd, ANIME_TIMER_ID);

            FUNC0("FIXME: save animation\n");
            if (FUNC4(image, szSaveFileName, &codecInfo[sfn.nFilterIndex - 1].Clsid, NULL) != Ok)
            {
                FUNC0("GdipSaveImageToFile() failed\n");
            }

            FUNC8(hDispWnd, ANIME_TIMER_ID, 0, NULL);
        }
        else
        {
            /* save non-animation */
            if (FUNC4(image, szSaveFileName, &codecInfo[sfn.nFilterIndex - 1].Clsid, NULL) != Ok)
            {
                FUNC0("GdipSaveImageToFile() failed\n");
            }
        }
    }

    FUNC11(szFilterMask);
    FUNC11(codecInfo);
}