
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testGetIcmpStatistics () ;
 int testGetIcmpStatisticsEx () ;
 int testGetIfTable () ;
 int testGetIpAddrTable () ;
 int testGetIpForwardTable () ;
 int testGetIpNetTable () ;
 int testGetIpStatistics () ;
 int testGetIpStatisticsEx () ;
 int testGetNumberOfInterfaces () ;
 int testGetTcpStatistics () ;
 int testGetTcpStatisticsEx () ;
 int testGetTcpTable () ;
 int testGetUdpStatistics () ;
 int testGetUdpStatisticsEx () ;
 int testGetUdpTable () ;
 int testIcmpSendEcho () ;
 int testSetTcpEntry () ;

__attribute__((used)) static void testWinNT4Functions(void)
{
  testGetNumberOfInterfaces();
  testGetIpAddrTable();
  testGetIfTable();
  testGetIpForwardTable();
  testGetIpNetTable();
  testGetIcmpStatistics();
  testGetIpStatistics();
  testGetTcpStatistics();
  testGetUdpStatistics();
  testGetIcmpStatisticsEx();
  testGetIpStatisticsEx();
  testGetTcpStatisticsEx();
  testGetUdpStatisticsEx();
  testGetTcpTable();
  testGetUdpTable();
  testSetTcpEntry();
  testIcmpSendEcho();
}
