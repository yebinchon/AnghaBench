
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ err; } ;
typedef TYPE_1__ Connection ;


 scalar_t__ IS_SOCKET_ERROR (scalar_t__) ;
 int WSAGetLastError () ;
 int errno ;
 char* pgwin32_socket_strerror (int ) ;
 char* strerror (int ) ;

const char *
ts_plain_errmsg(Connection *conn)
{
 const char *errmsg = "no connection error";





 if (IS_SOCKET_ERROR(conn->err))
  errmsg = strerror(errno);


 conn->err = 0;

 return errmsg;
}
