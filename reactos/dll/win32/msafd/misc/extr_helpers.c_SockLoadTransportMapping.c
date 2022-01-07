
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef char* PWSTR ;
typedef char* PWINSOCK_MAPPING ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int INT ;
typedef int HKEY ;


 int ERR (char*) ;
 int GlobalHeap ;
 int HKEY_LOCAL_MACHINE ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int *,int*) ;
 int TRACE (char*,char*) ;
 int WSAEINVAL ;
 int wcscat (char*,char*) ;
 int wcscpy (char*,char*) ;
 int wcslen (char*) ;

INT
SockLoadTransportMapping(
    PWSTR TransportName,
    PWINSOCK_MAPPING *Mapping)
{
    PWSTR TransportKey;
    HKEY KeyHandle;
    ULONG MappingSize;
    LONG Status;

    TRACE("TransportName %ws\n", TransportName);


    TransportKey = HeapAlloc(GlobalHeap, 0, (54 + wcslen(TransportName)) * sizeof(WCHAR));


    if (TransportKey == ((void*)0)) {
        ERR("Buffer allocation failed\n");
        return WSAEINVAL;
    }


    wcscpy(TransportKey, L"System\\CurrentControlSet\\Services\\");
    wcscat(TransportKey, TransportName);
    wcscat(TransportKey, L"\\Parameters\\Winsock");


    Status = RegOpenKeyExW(HKEY_LOCAL_MACHINE, TransportKey, 0, KEY_READ, &KeyHandle);


    HeapFree(GlobalHeap, 0, TransportKey);


    if (Status) {
        ERR("Error reading transport mapping registry\n");
        return WSAEINVAL;
    }


    Status = RegQueryValueExW(KeyHandle, L"Mapping", ((void*)0), ((void*)0), ((void*)0), &MappingSize);


    if (Status) {
        ERR("Error reading transport mapping registry\n");
        return WSAEINVAL;
    }


    *Mapping = HeapAlloc(GlobalHeap, 0, MappingSize);


    if (*Mapping == ((void*)0)) {
        ERR("Buffer allocation failed\n");
        return WSAEINVAL;
    }


    Status = RegQueryValueExW(KeyHandle, L"Mapping", ((void*)0), ((void*)0), (LPBYTE)*Mapping, &MappingSize);


    if (Status) {
        ERR("Error reading transport mapping registry\n");
        HeapFree(GlobalHeap, 0, *Mapping);
        return WSAEINVAL;
    }


    RegCloseKey(KeyHandle);
    return 0;
}
