
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ socklen_t ;


 scalar_t__ SPRINTF (char*) ;
 int WSAEINVAL ;
 int WSASetLastError (int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char *
inet_ntop4(const u_char *src, char *dst, socklen_t size)
{
 static const char fmt[] = "%u.%u.%u.%u";
 char tmp[sizeof "255.255.255.255"];

 if (SPRINTF((tmp, fmt, src[0], src[1], src[2], src[3])) > size) {
  WSASetLastError(WSAEINVAL);
  return (((void*)0));
 }
 strcpy(dst, tmp);
 return (dst);
}
