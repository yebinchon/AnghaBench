
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCHAR ;
typedef scalar_t__ INT ;
typedef int HKEY ;


 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 scalar_t__ NO_ERROR ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteValueA (int ,int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;

__attribute__((used)) static
INT
DeleteRegistryValue(PCHAR ValueName)
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

        ErrorCode = RegDeleteValueA(ParametersKey, ValueName);


        RegCloseKey(ParametersKey);
    }
    return ErrorCode;
}
