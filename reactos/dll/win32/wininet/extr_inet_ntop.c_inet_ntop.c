
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;




 int WSAEAFNOSUPPORT ;
 int WSASetLastError (int ) ;
 char const* inet_ntop4 (void const*,char*,int ) ;
 char const* inet_ntop6 (void const*,char*,int ) ;

const char *
inet_ntop(int af, const void *src, char *dst, socklen_t size)
{

 switch (af) {
 case 129:
  return (inet_ntop4(src, dst, size));




 default:
  WSASetLastError(WSAEAFNOSUPPORT);
  return (((void*)0));
 }

}
