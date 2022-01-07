
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int GUID ;


 int DPAID_ComPort ;
 int DPAID_INet ;
 int DPAID_INetPort ;
 int DPAID_INetW ;
 int DPAID_LobbyProvider ;
 int DPAID_Modem ;
 int DPAID_ModemW ;
 int DPAID_Phone ;
 int DPAID_PhoneW ;
 int DPAID_ServiceProvider ;
 int DPAID_TotalSize ;
 int DPSPGUID_IPX ;
 int DPSPGUID_MODEM ;
 int DPSPGUID_SERIAL ;
 int DPSPGUID_TCPIP ;
 scalar_t__ IsEqualGUID (int const*,int *) ;
 char* wine_dbgstr_guid (int const*) ;

__attribute__((used)) static LPCSTR Guid2str(const GUID *guid)
{
    if (!guid) return "(null)";


    if (IsEqualGUID(guid, &DPSPGUID_IPX))
        return "DPSPGUID_IPX";
    if (IsEqualGUID(guid, &DPSPGUID_TCPIP))
        return "DPSPGUID_TCPIP";
    if (IsEqualGUID(guid, &DPSPGUID_SERIAL))
        return "DPSPGUID_SERIAL";
    if (IsEqualGUID(guid, &DPSPGUID_MODEM))
        return "DPSPGUID_MODEM";

    if (IsEqualGUID(guid, &DPAID_TotalSize))
        return "DPAID_TotalSize";
    if (IsEqualGUID(guid, &DPAID_ServiceProvider))
        return "DPAID_ServiceProvider";
    if (IsEqualGUID(guid, &DPAID_LobbyProvider))
        return "DPAID_LobbyProvider";
    if (IsEqualGUID(guid, &DPAID_Phone))
        return "DPAID_Phone";
    if (IsEqualGUID(guid, &DPAID_PhoneW))
        return "DPAID_PhoneW";
    if (IsEqualGUID(guid, &DPAID_Modem))
        return "DPAID_Modem";
    if (IsEqualGUID(guid, &DPAID_ModemW))
        return "DPAID_ModemW";
    if (IsEqualGUID(guid, &DPAID_INet))
        return "DPAID_INet";
    if (IsEqualGUID(guid, &DPAID_INetW))
        return "DPAID_INetW";
    if (IsEqualGUID(guid, &DPAID_INetPort))
        return "DPAID_INetPort";
    if (IsEqualGUID(guid, &DPAID_ComPort))
        return "DPAID_ComPort";

    return wine_dbgstr_guid(guid);
}
