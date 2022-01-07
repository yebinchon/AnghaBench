
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HIMAGELIST ;
typedef int * HICON ;


 int * CreateIcon (int ,int,int,int,int,int ,int ) ;
 int DestroyIcon (int *) ;
 int DestroyWindow (int ) ;
 int check_bits (int ,int *,int ,int,int ,char*) ;
 int create_window () ;
 int empty_bits ;
 int hinst ;
 int icon_bits ;
 int ok (int,char*) ;
 int * pImageList_Create (int,int,int ,int ,int) ;
 int pImageList_Destroy (int *) ;
 int * pImageList_Merge (int *,int,int *,int,int,int) ;
 scalar_t__ pImageList_ReplaceIcon (int *,int,int *) ;

__attribute__((used)) static void test_merge(void)
{
    HIMAGELIST himl1, himl2, hmerge;
    HICON hicon1;
    HWND hwnd = create_window();

    himl1 = pImageList_Create(32, 32, 0, 0, 3);
    ok(himl1 != ((void*)0),"failed to create himl1\n");

    himl2 = pImageList_Create(32, 32, 0, 0, 3);
    ok(himl2 != ((void*)0),"failed to create himl2\n");

    hicon1 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon1 != ((void*)0), "failed to create hicon1\n");

    if (!himl1 || !himl2 || !hicon1)
        return;

    ok(0 == pImageList_ReplaceIcon(himl2, -1, hicon1), "Failed to add icon1 to himl2.\n");
    check_bits(hwnd, himl2, 0, 32, icon_bits, "add icon1 to himl2");


    hmerge = pImageList_Merge(himl1, -1, himl2, 0, 0, 0);
    ok(hmerge != ((void*)0), "merge himl1,-1 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl1,-1");
    pImageList_Destroy(hmerge);

    hmerge = pImageList_Merge(himl1, 0, himl2, 0, 0, 0);
    ok(hmerge != ((void*)0),"merge himl1,0 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl1,0");
    pImageList_Destroy(hmerge);


    pImageList_Destroy(himl2);
    himl2 = pImageList_Create(32, 32, 0, 0, 3);
    ok(himl2 != ((void*)0),"failed to recreate himl2\n");
    if (!himl2)
        return;

    hmerge = pImageList_Merge(himl1, -1, himl2, -1, 0, 0);
    ok(hmerge != ((void*)0), "merge himl2,-1 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl2,-1");
    pImageList_Destroy(hmerge);

    hmerge = pImageList_Merge(himl1, -1, himl2, 0, 0, 0);
    ok(hmerge != ((void*)0), "merge himl2,0 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl2,0");
    pImageList_Destroy(hmerge);


    ok(0 == pImageList_ReplaceIcon(himl2, -1, hicon1), "Failed to re-add icon1 to himl2.\n");

    hmerge = pImageList_Merge(himl2, 0, himl2, 0, 0, 0);
    ok(hmerge != ((void*)0), "merge himl2 with itself failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl2 with itself");
    pImageList_Destroy(hmerge);


    ok(0 == pImageList_ReplaceIcon(himl1, -1, hicon1), "Failed to add icon1 to himl1.\n");

    hmerge = pImageList_Merge(himl1, 0, himl2, 0, 0, 0);
    ok(hmerge != ((void*)0), "merge himl1 with himl2 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl1 with himl2");
    pImageList_Destroy(hmerge);

    hmerge = pImageList_Merge(himl1, 0, himl2, 0, 8, 16);
    ok(hmerge != ((void*)0), "merge himl1 with himl2 8,16 failed\n");
    check_bits(hwnd, hmerge, 0, 32, empty_bits, "merge himl1 with himl2, 8,16");
    pImageList_Destroy(hmerge);

    pImageList_Destroy(himl1);
    pImageList_Destroy(himl2);
    DestroyIcon(hicon1);
    DestroyWindow(hwnd);
}
