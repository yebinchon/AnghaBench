
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szTitleBuf ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {int FileName; } ;
typedef TYPE_1__ SHIMGVW_FILENODE ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int GdipDisposeImage (scalar_t__) ;
 int IDS_APPTITLE ;
 int LoadStringW (int ,int ,int *,int ) ;
 int SetWindowTextW (int ,int *) ;
 int StringCbPrintfW (int *,int,char*,int *,char*,int *) ;
 int hInstance ;
 scalar_t__ image ;
 int pLoadImage (int ) ;
 int * wcsrchr (int ,char) ;

__attribute__((used)) static VOID
pLoadImageFromNode(SHIMGVW_FILENODE *node, HWND hwnd)
{
    WCHAR szTitleBuf[800];
    WCHAR szResStr[512];
    WCHAR *c;

    if (node)
    {
        c = wcsrchr(node->FileName, '\\');
        if (c)
        {
            c++;
        }

        LoadStringW(hInstance, IDS_APPTITLE, szResStr, ARRAYSIZE(szResStr));
        StringCbPrintfW(szTitleBuf, sizeof(szTitleBuf), L"%ls%ls%ls", szResStr, L" - ", c);
        SetWindowTextW(hwnd, szTitleBuf);

        if (image)
        {
            GdipDisposeImage(image);
        }

        pLoadImage(node->FileName);
    }
}
