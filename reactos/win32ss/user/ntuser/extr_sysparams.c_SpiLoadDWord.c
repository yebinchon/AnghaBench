
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Result ;
typedef int PCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int REG_DWORD ;
 int RegReadUserSetting (int ,int ,int ,int *,int) ;

__attribute__((used)) static
INT
SpiLoadDWord(PCWSTR pwszKey, PCWSTR pwszValue, INT iValue)
{
    DWORD Result;
    if (!RegReadUserSetting(pwszKey, pwszValue, REG_DWORD, &Result, sizeof(Result)))
    {
        return iValue;
    }
    return Result;
}
