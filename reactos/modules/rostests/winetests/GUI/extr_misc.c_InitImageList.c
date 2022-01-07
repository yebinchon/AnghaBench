
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int INT ;
typedef int * HIMAGELIST ;
typedef int * HICON ;


 int DestroyIcon (int *) ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 int IMAGE_ICON ;
 int ImageList_AddIcon (int *,int *) ;
 int * ImageList_Create (scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 int ImageList_Destroy (int *) ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int MAKEINTRESOURCEW (scalar_t__) ;
 int hInstance ;

HIMAGELIST
InitImageList(UINT StartResource,
              UINT EndResource,
              UINT Width,
              UINT Height)
{
    HICON hIcon;
    HIMAGELIST hImageList;
    UINT i;
    INT Ret;


    hImageList = ImageList_Create(Width,
                                  Height,
                                  ILC_MASK | ILC_COLOR32,
                                  EndResource - StartResource,
                                  0);
    if (hImageList == ((void*)0))
        return ((void*)0);


    for (i = StartResource; i <= EndResource; i++)
    {
        hIcon = (HICON)LoadImageW(hInstance,
                                  MAKEINTRESOURCEW(i),
                                  IMAGE_ICON,
                                  Width,
                                  Height,
                                  LR_DEFAULTCOLOR);
        if (hIcon == ((void*)0))
            goto fail;

        Ret = ImageList_AddIcon(hImageList,
                                hIcon);
        if (Ret == -1)
            goto fail;

        DestroyIcon(hIcon);
    }

    return hImageList;

fail:
    ImageList_Destroy(hImageList);
    return ((void*)0);
}
