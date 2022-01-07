
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int LCID ;


 int GetLocaleInfoW (int ,int,int *,int) ;
 int LOCALE_IDEFAULTANSICODEPAGE ;
 int LOCALE_RETURN_NUMBER ;

__attribute__((used)) static inline UINT get_lcid_codepage( LCID lcid )
{
    UINT ret;
    if (!GetLocaleInfoW( lcid, LOCALE_IDEFAULTANSICODEPAGE|LOCALE_RETURN_NUMBER, (WCHAR *)&ret,
                         sizeof(ret)/sizeof(WCHAR) )) ret = 0;
    return ret;
}
