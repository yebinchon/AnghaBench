
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int awcBuffer ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int PCWSTR ;
typedef int INT ;


 int REG_SZ ;
 int RegReadUserSetting (int ,int ,int ,int *,int) ;
 int _wtoi (int *) ;

__attribute__((used)) static
INT
SpiLoadInt(PCWSTR pwszKey, PCWSTR pwszValue, INT iValue)
{
    WCHAR awcBuffer[12];
    ULONG cbSize;

    cbSize = sizeof(awcBuffer);
    if (!RegReadUserSetting(pwszKey, pwszValue, REG_SZ, awcBuffer, cbSize))
    {
        return iValue;
    }
    return _wtoi(awcBuffer);
}
