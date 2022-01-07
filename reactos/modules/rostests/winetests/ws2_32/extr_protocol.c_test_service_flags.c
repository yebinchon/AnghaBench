
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int AF_INET ;
 int AF_INET6 ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int TCPIP_SERVICE_FLAGS ;
 int UDPIP_SERVICE_FLAGS ;
 int XP1_QOS_SUPPORTED ;
 int ok (int,char*,int ,int ) ;

__attribute__((used)) static void test_service_flags(int family, int version, int socktype, int protocol, DWORD testflags)
{
    DWORD expectedflags = 0;
    if (socktype == SOCK_STREAM && protocol == IPPROTO_TCP)
        expectedflags = TCPIP_SERVICE_FLAGS;
    if (socktype == SOCK_DGRAM && protocol == IPPROTO_UDP)
        expectedflags = UDPIP_SERVICE_FLAGS;


    if ((family == AF_INET || family == AF_INET6) && version == 2 && expectedflags)
    {

        testflags &= ~XP1_QOS_SUPPORTED;
        ok(expectedflags == testflags,
           "Incorrect flags, expected 0x%x, received 0x%x\n",
           expectedflags, testflags);
    }
}
