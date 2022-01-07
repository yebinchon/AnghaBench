
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;


 int Anime_LoadInfo () ;
 int DPRINT1 (char*,...) ;
 int GdipLoadImageFromFile (int ,int *) ;
 int GetFileAttributesW (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int ResetZoom () ;
 int TRUE ;
 int hDispWnd ;
 int image ;

__attribute__((used)) static void pLoadImage(LPWSTR szOpenFileName)
{

    if (GetFileAttributesW(szOpenFileName) == 0xFFFFFFFF)
    {
        DPRINT1("File %s not found!\n", szOpenFileName);
        return;
    }


    GdipLoadImageFromFile(szOpenFileName, &image);
    if (!image)
    {
        DPRINT1("GdipLoadImageFromFile() failed\n");
        return;
    }
    Anime_LoadInfo();


    ResetZoom();


    InvalidateRect(hDispWnd, ((void*)0), TRUE);
}
