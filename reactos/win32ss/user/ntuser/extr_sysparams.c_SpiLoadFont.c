
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PLOGFONTW ;
typedef int LPWSTR ;
typedef int LOGFONTW ;
typedef int BOOL ;


 int KEY_METRIC ;
 int REG_BINARY ;
 int RegReadUserSetting (int ,int ,int ,int *,int) ;

__attribute__((used)) static
VOID
SpiLoadFont(PLOGFONTW plfOut, LPWSTR pwszValueName, PLOGFONTW plfDefault)
{
    BOOL bResult;

    bResult = RegReadUserSetting(KEY_METRIC,
                                 pwszValueName,
                                 REG_BINARY,
                                 plfOut,
                                 sizeof(LOGFONTW));
    if (!bResult)
        *plfOut = *plfDefault;
}
