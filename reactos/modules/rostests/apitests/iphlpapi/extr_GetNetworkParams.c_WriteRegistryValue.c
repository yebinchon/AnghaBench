
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCHAR ;
typedef int LPBYTE ;
typedef scalar_t__ INT ;
typedef int HKEY ;


 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 scalar_t__ NO_ERROR ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegSetValueExA (int ,scalar_t__,int ,int ,int ,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static
INT
WriteRegistryValue(PCHAR ValueName, PCHAR Value)
{
    INT ErrorCode;
    HKEY ParametersKey;


    ErrorCode = RegOpenKeyExA(HKEY_LOCAL_MACHINE,
                              "System\\CurrentControlSet\\Services\\Tcpip\\Parameters",
                              0,
                              KEY_WRITE,
                              &ParametersKey);
    if (ErrorCode == NO_ERROR)
    {

        ErrorCode = RegSetValueExA(ParametersKey,
                                   ValueName,
                                   0,
                                   REG_SZ,
                                   (LPBYTE)Value,
                                   strlen(Value) + 1);


        RegCloseKey(ParametersKey);
    }
    return ErrorCode;
}
