
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int HKEY_CURRENT_CONFIG ;
 int HKEY_CURRENT_USER ;
 int USER_DEFAULT_SCREEN_DPI ;
 scalar_t__ get_reg_dword (int ,char*,char*,int *) ;

__attribute__((used)) static DWORD get_real_dpi(void)
{
    DWORD dpi;

    if (get_reg_dword(HKEY_CURRENT_USER, "Control Panel\\Desktop", "LogPixels", &dpi))
        return dpi;
    if (get_reg_dword(HKEY_CURRENT_CONFIG, "Software\\Fonts", "LogPixels", &dpi))
        return dpi;
    return USER_DEFAULT_SCREEN_DPI;
}
