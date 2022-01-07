
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LANGID ;
typedef int HKL ;


 int ActivateKeyboardLayout (int ,int ) ;
 int GetKeyboardLayout (int ) ;
 int LOWORD (int ) ;
 int LoadKeyboardLayoutA (char*,int ) ;
 int ok (int,char*,char*) ;
 int skip (char*,int,int) ;
 int sprintf (char*,char*,int) ;
 int trace (char*,char*) ;
 int win_skip (char*,char*) ;

__attribute__((used)) static HKL activate_keyboard_layout(LANGID langid, HKL *hkl_orig)
{
    HKL hkl, hkl_current;
    char hkl_name[64];

    sprintf(hkl_name, "%08x", langid);
    trace("Loading keyboard layout %s\n", hkl_name);
    hkl = LoadKeyboardLayoutA(hkl_name, 0);
    if (!hkl)
    {
        win_skip("Unable to load keyboard layout %s\n", hkl_name);
        return 0;
    }
    *hkl_orig = ActivateKeyboardLayout(hkl, 0);
    ok(*hkl_orig != 0, "Unable to activate keyboard layout %s\n", hkl_name);
    if (!*hkl_orig) return 0;

    hkl_current = GetKeyboardLayout(0);
    if (LOWORD(hkl_current) != langid)
    {






        skip("current %08x != langid %08x\n", LOWORD(hkl_current), langid);
        return 0;
    }

    return hkl;
}
