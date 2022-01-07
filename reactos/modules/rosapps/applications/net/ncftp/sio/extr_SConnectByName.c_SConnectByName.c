
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;


 int AddrStrToAddr (char const* const,struct sockaddr_in*,int) ;
 int SConnect (int,struct sockaddr_in*,int const) ;

int
SConnectByName(int sfd, const char * const addrStr, const int tlen)
{
 int result;
 struct sockaddr_in remoteAddr;

 if ((result = AddrStrToAddr(addrStr, &remoteAddr, -1)) == 0) {
  result = SConnect(sfd, &remoteAddr, tlen);
 }
 return (result);
}
