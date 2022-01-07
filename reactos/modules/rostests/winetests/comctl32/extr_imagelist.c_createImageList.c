
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HIMAGELIST ;
typedef int HBITMAP ;


 int CreateBitmap (int,int,int,int,int ) ;
 int DeleteObject (int ) ;
 int ILC_COLOR ;
 int bitmap_bits ;
 int ok (int ,char*,int,int) ;
 int pImageList_Add (int *,int ,int *) ;
 int * pImageList_Create (int,int,int ,int,int) ;

__attribute__((used)) static HIMAGELIST createImageList(int cx, int cy)
{

    HIMAGELIST himl = pImageList_Create(cx, cy, ILC_COLOR, 1, 1);
    HBITMAP hbm = CreateBitmap(48, 48, 1, 1, bitmap_bits);

    ok(himl != ((void*)0), "Failed to create image list, %d x %d.\n", cx, cy);
    pImageList_Add(himl, hbm, ((void*)0));
    DeleteObject(hbm);
    return himl;
}
