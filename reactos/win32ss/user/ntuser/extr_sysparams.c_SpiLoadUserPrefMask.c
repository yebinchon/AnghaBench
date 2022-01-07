
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Result ;
typedef int DWORD ;


 int KEY_DESKTOP ;
 int REG_BINARY ;
 int RegReadUserSetting (int ,int ,int ,int *,int) ;
 int VAL_USERPREFMASK ;

__attribute__((used)) static
DWORD
SpiLoadUserPrefMask(DWORD dValue)
{
    DWORD Result;
    if (!RegReadUserSetting(KEY_DESKTOP, VAL_USERPREFMASK, REG_BINARY, &Result, sizeof(Result)))
    {
        return dValue;
    }
    return Result;
}
