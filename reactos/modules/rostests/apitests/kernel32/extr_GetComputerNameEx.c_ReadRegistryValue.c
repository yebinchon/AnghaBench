
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCHAR ;
typedef scalar_t__ LSTATUS ;
typedef int * LPBYTE ;
typedef scalar_t__ INT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 scalar_t__ NO_ERROR ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,scalar_t__,int *,scalar_t__*,int *,scalar_t__*) ;

__attribute__((used)) static
LSTATUS
ReadRegistryValue(PCHAR ValueName, PCHAR Value)
{
    INT ErrorCode;
    HKEY ParametersKey;
    DWORD RegType;
    DWORD RegSize = 0;


    ErrorCode = RegOpenKeyExA(HKEY_LOCAL_MACHINE,
                              "System\\CurrentControlSet\\Services\\Tcpip\\Parameters",
                              0,
                              KEY_READ,
                              &ParametersKey);
    if (ErrorCode == NO_ERROR)
    {

        ErrorCode = RegQueryValueExA(ParametersKey,
                                     ValueName,
                                     ((void*)0),
                                     &RegType,
                                     ((void*)0),
                                     &RegSize);
        if (RegSize)
        {

            ErrorCode = RegQueryValueExA(ParametersKey,
                                         ValueName,
                                         ((void*)0),
                                         &RegType,
                                         (LPBYTE)Value,
                                         &RegSize);
        }


        RegCloseKey(ParametersKey);
    }
    return ErrorCode;
}
