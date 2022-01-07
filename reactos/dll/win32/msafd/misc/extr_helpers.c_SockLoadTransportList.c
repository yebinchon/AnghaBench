
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PWSTR ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int INT ;
typedef int HKEY ;


 int ERR (char*) ;
 int GlobalHeap ;
 int HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int *,int *) ;
 int TRACE (char*) ;
 int WSAEINVAL ;

INT
SockLoadTransportList(
    PWSTR *TransportList)
{
    ULONG TransportListSize;
    HKEY KeyHandle;
    LONG Status;

    TRACE("Called\n");


    Status = RegOpenKeyExW (HKEY_LOCAL_MACHINE,
                            L"SYSTEM\\CurrentControlSet\\Services\\Winsock\\Parameters",
                            0,
                            KEY_READ,
                            &KeyHandle);


    if (Status) {
        ERR("Error reading transport list registry\n");
        return WSAEINVAL;
    }


    Status = RegQueryValueExW(KeyHandle,
                              L"Transports",
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              &TransportListSize);


    if (Status) {
        ERR("Error reading transport list registry\n");
        return WSAEINVAL;
    }


    *TransportList = HeapAlloc(GlobalHeap, 0, TransportListSize);


    if (*TransportList == ((void*)0)) {
        ERR("Buffer allocation failed\n");
        return WSAEINVAL;
    }


    Status = RegQueryValueExW (KeyHandle,
                               L"Transports",
                               ((void*)0),
                               ((void*)0),
                               (LPBYTE)*TransportList,
                               &TransportListSize);


    if (Status) {
        ERR("Error reading transport list registry\n");
        HeapFree(GlobalHeap, 0, *TransportList);
        return WSAEINVAL;
    }


    RegCloseKey(KeyHandle);
    return 0;
}
