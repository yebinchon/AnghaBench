
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIPrintSettings ;
typedef int buf ;
typedef int WCHAR ;
typedef int PRUnichar ;


 int FALSE ;
 int IDS_PRINT_FOOTER_TEMPLATE ;
 int IDS_PRINT_HEADER_TEMPLATE ;
 scalar_t__ LoadStringW (int ,int ,int *,int) ;
 int TRUE ;
 int get_shdoclc () ;
 int nsIPrintSettings_SetFooterStrCenter (int *,int const*) ;
 int nsIPrintSettings_SetFooterStrLeft (int *,int const*) ;
 int nsIPrintSettings_SetFooterStrRight (int *,int const*) ;
 int nsIPrintSettings_SetHeaderStrCenter (int *,int const*) ;
 int nsIPrintSettings_SetHeaderStrLeft (int *,int const*) ;
 int nsIPrintSettings_SetHeaderStrRight (int *,int const*) ;
 int set_print_template (int *,int *,int ) ;

__attribute__((used)) static void set_default_templates(nsIPrintSettings *settings)
{
    WCHAR buf[64];

    static const PRUnichar empty[] = {0};

    nsIPrintSettings_SetHeaderStrLeft(settings, empty);
    nsIPrintSettings_SetHeaderStrRight(settings, empty);
    nsIPrintSettings_SetHeaderStrCenter(settings, empty);
    nsIPrintSettings_SetFooterStrLeft(settings, empty);
    nsIPrintSettings_SetFooterStrRight(settings, empty);
    nsIPrintSettings_SetFooterStrCenter(settings, empty);

    if(LoadStringW(get_shdoclc(), IDS_PRINT_HEADER_TEMPLATE, buf,
                   sizeof(buf)/sizeof(WCHAR)))
        set_print_template(settings, buf, TRUE);


    if(LoadStringW(get_shdoclc(), IDS_PRINT_FOOTER_TEMPLATE, buf,
                   sizeof(buf)/sizeof(WCHAR)))
        set_print_template(settings, buf, FALSE);

}
