
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hbmMask; int hbmImage; } ;
typedef TYPE_1__ IMAGEINFO ;
typedef int * HIMAGELIST ;
typedef int * HICON ;


 int * CreateIcon (int ,int,int,int,int,int ,int ) ;
 int DestroyIcon (int *) ;
 int ILC_COLOR ;
 int ILC_COLOR16 ;
 int ILC_COLOR24 ;
 int ILC_COLOR32 ;
 int ILC_COLOR4 ;
 int ILC_COLOR8 ;
 int ILC_COLORDDB ;
 int ILC_MASK ;
 int get_color_format (int ) ;
 int hinst ;
 int icon_bits ;
 int ok (int,char*,...) ;
 int * pImageList_Create (int,int,int,int ,int) ;
 int pImageList_Destroy (int *) ;
 int pImageList_GetImageInfo (int *,int ,TYPE_1__*) ;
 int * pImageList_Merge (int *,int ,int *,int ,int ,int ) ;
 scalar_t__ pImageList_ReplaceIcon (int *,int,int *) ;

__attribute__((used)) static void test_merge_colors(void)
{
    HIMAGELIST himl[8], hmerge;
    int sizes[] = { ILC_COLOR, ILC_COLOR | ILC_MASK, ILC_COLOR4, ILC_COLOR8, ILC_COLOR16, ILC_COLOR24, ILC_COLOR32, ILC_COLORDDB };
    HICON hicon1;
    IMAGEINFO info;
    int bpp, i, j;

    hicon1 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon1 != ((void*)0), "failed to create hicon1\n");

    for (i = 0; i < 8; i++)
    {
        himl[i] = pImageList_Create(32, 32, sizes[i], 0, 3);
        ok(himl[i] != ((void*)0), "failed to create himl[%d]\n", i);
        ok(0 == pImageList_ReplaceIcon(himl[i], -1, hicon1), "Failed to add icon1 to himl[%d].\n", i);
        if (i == 0 || i == 1 || i == 7)
        {
            pImageList_GetImageInfo(himl[i], 0, &info);
            sizes[i] = get_color_format(info.hbmImage);
        }
    }
    DestroyIcon(hicon1);
    for (i = 0; i < 8; i++)
        for (j = 0; j < 8; j++)
        {
            hmerge = pImageList_Merge(himl[i], 0, himl[j], 0, 0, 0);
            ok(hmerge != ((void*)0), "merge himl[%d], himl[%d] failed\n", i, j);

            pImageList_GetImageInfo(hmerge, 0, &info);
            bpp = get_color_format(info.hbmImage);

            if (i == 4 && j == 7)
                ok(bpp == 16,
                    "wrong biBitCount %d when merging lists %d (%d) and %d (%d)\n", bpp, i, sizes[i], j, sizes[j]);
            else
                ok(bpp == (i > j ? sizes[i] : sizes[j]),
                    "wrong biBitCount %d when merging lists %d (%d) and %d (%d)\n", bpp, i, sizes[i], j, sizes[j]);
            ok(info.hbmMask != 0, "Imagelist merged from %d and %d had no mask\n", i, j);

            pImageList_Destroy(hmerge);
        }

    for (i = 0; i < 8; i++)
        pImageList_Destroy(himl[i]);
}
