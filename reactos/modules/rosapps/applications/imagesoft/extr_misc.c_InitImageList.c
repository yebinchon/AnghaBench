
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int INT ;
typedef int * HIMAGELIST ;
typedef int HBITMAP ;


 int DBG_UNREFERENCED_LOCAL_VARIABLE (int ) ;
 int DeleteObject (int ) ;
 int ILC_COLOR24 ;
 int ILC_MASK ;
 int IMAGE_BITMAP ;
 int ImageList_AddMasked (int *,int ,int ) ;
 int * ImageList_Create (int ,int ,int,scalar_t__,int ) ;
 int LR_LOADTRANSPARENT ;
 int LoadImage (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (scalar_t__) ;
 int RGB (int,int,int) ;
 int TB_BMP_HEIGHT ;
 int TB_BMP_WIDTH ;
 int hInstance ;

HIMAGELIST
InitImageList(UINT NumImages, UINT StartResource)
{
    HBITMAP hBitmap;
    HIMAGELIST hImageList;
    UINT i, k;
    INT Ret;
    DBG_UNREFERENCED_LOCAL_VARIABLE(Ret);


    hImageList = ImageList_Create(TB_BMP_WIDTH,
                                  TB_BMP_HEIGHT,
                                  ILC_MASK | ILC_COLOR24,
                                  NumImages,
                                  0);
    if (! hImageList)
        return ((void*)0);


    for (i = StartResource, k = 0; k < NumImages; i++, k++)
    {
        hBitmap = LoadImage(hInstance,
                            MAKEINTRESOURCE(i),
                            IMAGE_BITMAP,
                            TB_BMP_WIDTH,
                            TB_BMP_HEIGHT,
                            LR_LOADTRANSPARENT);

        Ret = ImageList_AddMasked(hImageList,
                                  hBitmap,
                                  RGB(255, 255, 254));

        DeleteObject(hBitmap);
    }

    return hImageList;

}
