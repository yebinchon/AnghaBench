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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ hLibrary ; 
 void* pCancelIPChangeNotify ; 
 void* pConvertInterfaceGuidToLuid ; 
 void* pConvertInterfaceIndexToLuid ; 
 void* pConvertInterfaceLuidToGuid ; 
 void* pConvertInterfaceLuidToIndex ; 
 void* pConvertInterfaceLuidToNameA ; 
 void* pConvertInterfaceLuidToNameW ; 
 void* pConvertInterfaceNameToLuidA ; 
 void* pConvertInterfaceNameToLuidW ; 
 void* pCreateSortedAddressPairs ; 
 void* pFreeMibTable ; 
 void* pGetAdaptersAddresses ; 
 void* pGetAdaptersInfo ; 
 void* pGetExtendedTcpTable ; 
 void* pGetExtendedUdpTable ; 
 void* pGetFriendlyIfIndex ; 
 void* pGetIcmpStatistics ; 
 void* pGetIcmpStatisticsEx ; 
 void* pGetIfEntry ; 
 void* pGetIfEntry2 ; 
 void* pGetIfTable ; 
 void* pGetIfTable2 ; 
 void* pGetInterfaceInfo ; 
 void* pGetIpAddrTable ; 
 void* pGetIpForwardTable ; 
 void* pGetIpNetTable ; 
 void* pGetIpStatistics ; 
 void* pGetIpStatisticsEx ; 
 void* pGetNetworkParams ; 
 void* pGetNumberOfInterfaces ; 
 void* pGetPerAdapterInfo ; 
 void* pGetTcpStatistics ; 
 void* pGetTcpStatisticsEx ; 
 void* pGetTcpTable ; 
 void* pGetUdpStatistics ; 
 void* pGetUdpStatisticsEx ; 
 void* pGetUdpTable ; 
 void* pIcmpCreateFile ; 
 void* pIcmpSendEcho ; 
 void* pNotifyAddrChange ; 
 void* pSetTcpEntry ; 

__attribute__((used)) static void FUNC2(void)
{
  hLibrary = FUNC1("iphlpapi.dll");
  if (hLibrary) {
    pGetNumberOfInterfaces = (void *)FUNC0(hLibrary, "GetNumberOfInterfaces");
    pGetIpAddrTable = (void *)FUNC0(hLibrary, "GetIpAddrTable");
    pGetIfEntry = (void *)FUNC0(hLibrary, "GetIfEntry");
    pGetIfEntry2 = (void *)FUNC0(hLibrary, "GetIfEntry2");
    pGetFriendlyIfIndex = (void *)FUNC0(hLibrary, "GetFriendlyIfIndex");
    pGetIfTable = (void *)FUNC0(hLibrary, "GetIfTable");
    pGetIfTable2 = (void *)FUNC0(hLibrary, "GetIfTable2");
    pGetIpForwardTable = (void *)FUNC0(hLibrary, "GetIpForwardTable");
    pGetIpNetTable = (void *)FUNC0(hLibrary, "GetIpNetTable");
    pGetInterfaceInfo = (void *)FUNC0(hLibrary, "GetInterfaceInfo");
    pGetAdaptersInfo = (void *)FUNC0(hLibrary, "GetAdaptersInfo");
    pGetNetworkParams = (void *)FUNC0(hLibrary, "GetNetworkParams");
    pGetIcmpStatistics = (void *)FUNC0(hLibrary, "GetIcmpStatistics");
    pGetIpStatistics = (void *)FUNC0(hLibrary, "GetIpStatistics");
    pGetTcpStatistics = (void *)FUNC0(hLibrary, "GetTcpStatistics");
    pGetUdpStatistics = (void *)FUNC0(hLibrary, "GetUdpStatistics");
    pGetIcmpStatisticsEx = (void *)FUNC0(hLibrary, "GetIcmpStatisticsEx");
    pGetIpStatisticsEx = (void *)FUNC0(hLibrary, "GetIpStatisticsEx");
    pGetTcpStatisticsEx = (void *)FUNC0(hLibrary, "GetTcpStatisticsEx");
    pGetUdpStatisticsEx = (void *)FUNC0(hLibrary, "GetUdpStatisticsEx");
    pGetTcpTable = (void *)FUNC0(hLibrary, "GetTcpTable");
    pGetUdpTable = (void *)FUNC0(hLibrary, "GetUdpTable");
    pGetPerAdapterInfo = (void *)FUNC0(hLibrary, "GetPerAdapterInfo");
    pGetAdaptersAddresses = (void *)FUNC0(hLibrary, "GetAdaptersAddresses");
    pNotifyAddrChange = (void *)FUNC0(hLibrary, "NotifyAddrChange");
    pCancelIPChangeNotify = (void *)FUNC0(hLibrary, "CancelIPChangeNotify");
    pGetExtendedTcpTable = (void *)FUNC0(hLibrary, "GetExtendedTcpTable");
    pGetExtendedUdpTable = (void *)FUNC0(hLibrary, "GetExtendedUdpTable");
    pSetTcpEntry = (void *)FUNC0(hLibrary, "SetTcpEntry");
    pIcmpCreateFile = (void *)FUNC0(hLibrary, "IcmpCreateFile");
    pIcmpSendEcho = (void *)FUNC0(hLibrary, "IcmpSendEcho");
    pCreateSortedAddressPairs = (void *)FUNC0(hLibrary, "CreateSortedAddressPairs");
    pFreeMibTable = (void *)FUNC0(hLibrary, "FreeMibTable");
    pConvertInterfaceGuidToLuid = (void *)FUNC0(hLibrary, "ConvertInterfaceGuidToLuid");
    pConvertInterfaceIndexToLuid = (void *)FUNC0(hLibrary, "ConvertInterfaceIndexToLuid");
    pConvertInterfaceLuidToGuid = (void *)FUNC0(hLibrary, "ConvertInterfaceLuidToGuid");
    pConvertInterfaceLuidToIndex = (void *)FUNC0(hLibrary, "ConvertInterfaceLuidToIndex");
    pConvertInterfaceLuidToNameA = (void *)FUNC0(hLibrary, "ConvertInterfaceLuidToNameA");
    pConvertInterfaceLuidToNameW = (void *)FUNC0(hLibrary, "ConvertInterfaceLuidToNameW");
    pConvertInterfaceNameToLuidA = (void *)FUNC0(hLibrary, "ConvertInterfaceNameToLuidA");
    pConvertInterfaceNameToLuidW = (void *)FUNC0(hLibrary, "ConvertInterfaceNameToLuidW");
  }
}