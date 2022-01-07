
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int szSaveFileName ;
typedef int sfn ;
struct TYPE_12__ {int lStructSize; int nMaxFile; int Flags; size_t nFilterIndex; int Clsid; int FormatID; int FilenameExtension; int FormatDescription; struct TYPE_12__* lpstrFilter; struct TYPE_12__* lpstrFile; int hInstance; int hwndOwner; } ;
typedef TYPE_1__ WCHAR ;
typedef size_t UINT ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef TYPE_1__ ImageCodecInfo ;
typedef int HWND ;
typedef int GUID ;


 int ANIME_TIMER_ID ;
 int DPRINT1 (char*) ;
 scalar_t__ FALSE ;
 int GdipGetImageEncoders (size_t,size_t,TYPE_1__*) ;
 int GdipGetImageEncodersSize (size_t*,size_t*) ;
 int GdipGetImageRawFormat (int ,int *) ;
 scalar_t__ GdipSaveImageToFile (int ,TYPE_1__*,int *,int *) ;
 scalar_t__ GetSaveFileNameW (TYPE_1__*) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int KillTimer (int ,int ) ;
 int MAX_PATH ;
 int OFN_HIDEREADONLY ;
 int OFN_OVERWRITEPROMPT ;
 scalar_t__ Ok ;
 int SetTimer (int ,int ,int ,int *) ;
 int StringCbPrintfExW (TYPE_1__*,size_t,TYPE_1__**,size_t*,int ,char*,int ,...) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int free (TYPE_1__*) ;
 int hDispWnd ;
 int hInstance ;
 int image ;
 scalar_t__ m_pDelayItem ;
 TYPE_1__* malloc (size_t) ;
 int wcslen (int ) ;

__attribute__((used)) static void pSaveImageAs(HWND hwnd)
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

    GdipGetImageEncodersSize(&num, &size);
    codecInfo = malloc(size);
    if (!codecInfo)
    {
        DPRINT1("malloc() failed in pSaveImageAs()\n");
        return;
    }

    GdipGetImageEncoders(num, size, codecInfo);
    GdipGetImageRawFormat(image, &rawFormat);

    sizeRemain = 0;

    for (j = 0; j < num; ++j)
    {

        sizeRemain = sizeRemain + (((wcslen(codecInfo[j].FormatDescription) + (wcslen(codecInfo[j].FilenameExtension) * 2) + 5) * sizeof(WCHAR)));
    }


    sizeRemain = sizeRemain + (sizeof(WCHAR) * 2);

    szFilterMask = malloc(sizeRemain);
    if (!szFilterMask)
    {
        DPRINT1("cannot allocate memory for filter mask in pSaveImageAs()");
        free(codecInfo);
        return;
    }

    ZeroMemory(szSaveFileName, sizeof(szSaveFileName));
    ZeroMemory(szFilterMask, sizeRemain);
    ZeroMemory(&sfn, sizeof(sfn));
    sfn.lStructSize = sizeof(sfn);
    sfn.hwndOwner = hwnd;
    sfn.hInstance = hInstance;
    sfn.lpstrFile = szSaveFileName;
    sfn.lpstrFilter = szFilterMask;
    sfn.nMaxFile = MAX_PATH;
    sfn.Flags = OFN_OVERWRITEPROMPT | OFN_HIDEREADONLY;

    c = szFilterMask;

    for (j = 0; j < num; ++j)
    {
        StringCbPrintfExW(c, sizeRemain, &c, &sizeRemain, 0, L"%ls (%ls)", codecInfo[j].FormatDescription, codecInfo[j].FilenameExtension);


        c++;
        sizeRemain -= sizeof(*c);

        StringCbPrintfExW(c, sizeRemain, &c, &sizeRemain, 0, L"%ls", codecInfo[j].FilenameExtension);


        c++;
        sizeRemain -= sizeof(*c);

        if (IsEqualGUID(&rawFormat, &codecInfo[j].FormatID) != FALSE)
        {
            sfn.nFilterIndex = j + 1;
        }
    }

    if (GetSaveFileNameW(&sfn))
    {
        if (m_pDelayItem)
        {

            KillTimer(hDispWnd, ANIME_TIMER_ID);

            DPRINT1("FIXME: save animation\n");
            if (GdipSaveImageToFile(image, szSaveFileName, &codecInfo[sfn.nFilterIndex - 1].Clsid, ((void*)0)) != Ok)
            {
                DPRINT1("GdipSaveImageToFile() failed\n");
            }

            SetTimer(hDispWnd, ANIME_TIMER_ID, 0, ((void*)0));
        }
        else
        {

            if (GdipSaveImageToFile(image, szSaveFileName, &codecInfo[sfn.nFilterIndex - 1].Clsid, ((void*)0)) != Ok)
            {
                DPRINT1("GdipSaveImageToFile() failed\n");
            }
        }
    }

    free(szFilterMask);
    free(codecInfo);
}
