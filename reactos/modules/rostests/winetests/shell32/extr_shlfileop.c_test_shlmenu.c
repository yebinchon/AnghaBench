
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int HMENU ;


 int Shell_MergeMenus (int ,int ,int,int,int,int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void
test_shlmenu(void) {
 HRESULT hres;
 hres = Shell_MergeMenus (0, 0, 0x42, 0x4242, 0x424242, 0);
 ok (hres == 0x4242, "expected 0x4242 but got %x\n", hres);
 hres = Shell_MergeMenus ((HMENU)42, 0, 0x42, 0x4242, 0x424242, 0);
 ok (hres == 0x4242, "expected 0x4242 but got %x\n", hres);
}
