
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reading_layout ;
typedef int DWORD ;


 scalar_t__ GetLocaleInfoW (int ,int,void*,int) ;
 int LOCALE_IREADINGLAYOUT ;
 int LOCALE_RETURN_NUMBER ;
 int LOCALE_USER_DEFAULT ;
 int rtl ;

__attribute__((used)) static void detect_locale(void)
{
    DWORD reading_layout;
    rtl = GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_IREADINGLAYOUT | LOCALE_RETURN_NUMBER,
            (void *)&reading_layout, sizeof(reading_layout)) && reading_layout == 1;
}
