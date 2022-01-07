
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int HKEY_CLASSES_ROOT ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 scalar_t__ RegSetValueA (int ,int *,int ,char*,int) ;

__attribute__((used)) static BOOL register_testentry(void)
{
 HKEY hkey = 0, hkey2 = 0;
        DWORD ret;

        ret = RegCreateKeyA(HKEY_CLASSES_ROOT,"CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}", &hkey);
        if (!ret) ret = RegSetValueA(hkey,((void*)0),REG_SZ,"ComCat Test key",16);
 if (!ret) ret = RegCreateKeyA(hkey,
                                      "Implemented Categories\\{deadcafe-0000-0000-0000-000000000000}",
                                      &hkey2);
 RegCloseKey(hkey);
 RegCloseKey(hkey2);
        return !ret;
}
