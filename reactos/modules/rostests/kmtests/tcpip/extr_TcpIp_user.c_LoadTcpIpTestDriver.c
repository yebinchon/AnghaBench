
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int KmtLoadDriver (char*,int ) ;
 int KmtOpenDriver () ;

__attribute__((used)) static
void
LoadTcpIpTestDriver(void)
{

    KmtLoadDriver(L"TcpIp", FALSE);
    KmtOpenDriver();
}
