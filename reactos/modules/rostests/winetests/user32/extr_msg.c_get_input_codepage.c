
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp ;
typedef int WCHAR ;
typedef int HKL ;
typedef scalar_t__ DWORD ;


 scalar_t__ CP_ACP ;
 int GetKeyboardLayout (int ) ;
 int GetLocaleInfoW (int ,int,int *,int) ;
 int LOCALE_IDEFAULTANSICODEPAGE ;
 int LOCALE_RETURN_NUMBER ;
 int LOWORD (int ) ;

__attribute__((used)) static DWORD get_input_codepage( void )
{
    DWORD cp;
    int ret;
    HKL hkl = GetKeyboardLayout( 0 );

    ret = GetLocaleInfoW( LOWORD(hkl), LOCALE_IDEFAULTANSICODEPAGE | LOCALE_RETURN_NUMBER,
                          (WCHAR *)&cp, sizeof(cp) / sizeof(WCHAR) );
    if (!ret) cp = CP_ACP;
    return cp;
}
