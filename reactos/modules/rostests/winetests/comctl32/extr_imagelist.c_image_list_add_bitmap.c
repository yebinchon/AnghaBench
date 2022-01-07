
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HIMAGELIST ;
typedef int HBITMAP ;
typedef int BYTE ;


 int BMP_CX ;
 int DeleteObject (int ) ;
 int RGB (int ,int ,int ) ;
 int create_bitmap (int ,int ,int ,char*) ;
 int ok (int,char*) ;
 int pImageList_Add (int ,int ,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void image_list_add_bitmap(HIMAGELIST himl, BYTE grey, int i)
{
    char comment[16];
    HBITMAP hbm;
    int ret;

    sprintf(comment, "%d", i);
    hbm = create_bitmap(BMP_CX, BMP_CX, RGB(grey, grey, grey), comment);
    ret = pImageList_Add(himl, hbm, ((void*)0));
    ok(ret != -1, "Failed to add image to imagelist.\n");
    DeleteObject(hbm);
}
