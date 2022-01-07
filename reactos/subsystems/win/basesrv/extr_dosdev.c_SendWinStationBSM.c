
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int NTSTATUS ;
typedef int LPDWORD ;
typedef int LPARAM ;
typedef int DWORD ;


 int STATUS_NOT_IMPLEMENTED ;
 int UNIMPLEMENTED ;

NTSTATUS
SendWinStationBSM(DWORD Flags,
                  LPDWORD Recipients,
                  UINT Message,
                  WPARAM wParam,
                  LPARAM lParam)
{
    UNIMPLEMENTED;
    return STATUS_NOT_IMPLEMENTED;
}
