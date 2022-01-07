
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetLocaleInfoW (int ,int ,int *,int) ;
 int LOCALE_ICOUNTRY ;
 int LOCALE_SYSTEM_DEFAULT ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *get_countrycode(void)
{
    WCHAR *ret = heap_alloc( 6 * sizeof(WCHAR) );
    if (ret) GetLocaleInfoW( LOCALE_SYSTEM_DEFAULT, LOCALE_ICOUNTRY, ret, 6 );
    return ret;
}
