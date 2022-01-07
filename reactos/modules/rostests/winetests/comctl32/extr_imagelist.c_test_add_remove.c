
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HIMAGELIST ;
typedef scalar_t__ HICON ;


 scalar_t__ CreateIcon (int ,int,int,int,int,int ,int ) ;
 int DestroyIcon (scalar_t__) ;
 int ILC_COLOR16 ;
 int hinst ;
 int icon_bits ;
 int ok (int,char*) ;
 scalar_t__ pImageList_Create (int,int,int ,int ,int) ;
 int pImageList_Destroy (scalar_t__) ;
 int pImageList_Remove (scalar_t__,int) ;
 int pImageList_ReplaceIcon (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void test_add_remove(void)
{
    HIMAGELIST himl ;

    HICON hicon1 ;
    HICON hicon2 ;
    HICON hicon3 ;


    himl = pImageList_Create(84, 84, ILC_COLOR16, 0, 3);
    ok(himl!=0,"failed to create imagelist\n");


    hicon1 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon1 != 0, "no hicon1\n");
    hicon2 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon2 != 0, "no hicon2\n");
    hicon3 = CreateIcon(hinst, 32, 32, 1, 1, icon_bits, icon_bits);
    ok(hicon3 != 0, "no hicon3\n");


    ok(!pImageList_Remove(himl, 0), "Removed nonexistent icon.\n");

    ok(pImageList_Remove(himl, -1), "Removed nonexistent icon\n");


    ok(0 == pImageList_ReplaceIcon(himl, -1, hicon1), "Failed to add icon1.\n");
    ok(1 == pImageList_ReplaceIcon(himl, -1, hicon2), "Failed to add icon2.\n");
    ok(2 == pImageList_ReplaceIcon(himl, -1, hicon3), "Failed to add icon3.\n");


    ok(!pImageList_Remove(himl, 4711), "removed nonexistent icon\n");


    ok(pImageList_Remove(himl, 0), "Can't remove 0\n");
    ok(pImageList_Remove(himl, 0), "Can't remove 0\n");
    ok(pImageList_Remove(himl, 0), "Can't remove 0\n");


    ok(!pImageList_Remove(himl, 0), "Removed nonexistent icon.\n");


    ok(pImageList_Destroy(himl), "Failed to destroy imagelist.\n");

    ok(-1 == pImageList_ReplaceIcon((HIMAGELIST)0xdeadbeef, -1, hicon1), "Don't crash on bad handle\n");

    ok(DestroyIcon(hicon1), "Failed to destroy icon 1.\n");
    ok(DestroyIcon(hicon2), "Failed to destroy icon 2.\n");
    ok(DestroyIcon(hicon3), "Failed to destroy icon 3.\n");
}
