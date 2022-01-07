
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;
typedef int DWORD ;


 int ERROR_INVALID_ADDRESS ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;






DWORD
WlanRpcStatusToWinError(RPC_STATUS Status)
{
    switch (Status)
    {
        case 132:
        case 128:
            return ERROR_INVALID_HANDLE;

        case 130:
        case 131:
            return ERROR_INVALID_PARAMETER;

        case 129:
            return ERROR_INVALID_ADDRESS;

        default:
            return (DWORD)Status;
    }
}
