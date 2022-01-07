
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sockaddr ;
struct TYPE_4__ {int sock; } ;
struct TYPE_5__ {TYPE_1__ tcp; } ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int sprintf (char*,char*,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int strcpy (char*,char*) ;

wchar_t *
tcp_get_address(RDPCLIENT * This)
{
 return ((void*)0);
}
