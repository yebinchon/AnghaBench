#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  DPAID_ComPort ; 
 int /*<<< orphan*/  DPAID_INet ; 
 int /*<<< orphan*/  DPAID_INetPort ; 
 int /*<<< orphan*/  DPAID_INetW ; 
 int /*<<< orphan*/  DPAID_LobbyProvider ; 
 int /*<<< orphan*/  DPAID_Modem ; 
 int /*<<< orphan*/  DPAID_ModemW ; 
 int /*<<< orphan*/  DPAID_Phone ; 
 int /*<<< orphan*/  DPAID_PhoneW ; 
 int /*<<< orphan*/  DPAID_ServiceProvider ; 
 int /*<<< orphan*/  DPAID_TotalSize ; 
 int /*<<< orphan*/  DPSPGUID_IPX ; 
 int /*<<< orphan*/  DPSPGUID_MODEM ; 
 int /*<<< orphan*/  DPSPGUID_SERIAL ; 
 int /*<<< orphan*/  DPSPGUID_TCPIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static LPCSTR FUNC2(const GUID *guid)
{
    if (!guid) return "(null)";

    /* Service providers */
    if (FUNC0(guid, &DPSPGUID_IPX))
        return "DPSPGUID_IPX";
    if (FUNC0(guid, &DPSPGUID_TCPIP))
        return "DPSPGUID_TCPIP";
    if (FUNC0(guid, &DPSPGUID_SERIAL))
        return "DPSPGUID_SERIAL";
    if (FUNC0(guid, &DPSPGUID_MODEM))
        return "DPSPGUID_MODEM";
    /* DirectPlay Address IDs */
    if (FUNC0(guid, &DPAID_TotalSize))
        return "DPAID_TotalSize";
    if (FUNC0(guid, &DPAID_ServiceProvider))
        return "DPAID_ServiceProvider";
    if (FUNC0(guid, &DPAID_LobbyProvider))
        return "DPAID_LobbyProvider";
    if (FUNC0(guid, &DPAID_Phone))
        return "DPAID_Phone";
    if (FUNC0(guid, &DPAID_PhoneW))
        return "DPAID_PhoneW";
    if (FUNC0(guid, &DPAID_Modem))
        return "DPAID_Modem";
    if (FUNC0(guid, &DPAID_ModemW))
        return "DPAID_ModemW";
    if (FUNC0(guid, &DPAID_INet))
        return "DPAID_INet";
    if (FUNC0(guid, &DPAID_INetW))
        return "DPAID_INetW";
    if (FUNC0(guid, &DPAID_INetPort))
        return "DPAID_INetPort";
    if (FUNC0(guid, &DPAID_ComPort))
        return "DPAID_ComPort";

    return FUNC1(guid);
}