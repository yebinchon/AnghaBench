
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {size_t len; char* buf; } ;
typedef TYPE_1__ WSABUF ;
struct TYPE_6__ {int err; int sock; } ;
typedef int DWORD ;
typedef TYPE_2__ Connection ;


 scalar_t__ IS_SOCKET_ERROR (int) ;
 int WSARecv (int ,TYPE_1__*,int,int*,int*,int *,int *) ;
 int recv (int ,char*,size_t,int ) ;

__attribute__((used)) static ssize_t
plain_read(Connection *conn, char *buf, size_t buflen)
{
 ssize_t ret;
 ret = recv(conn->sock, buf, buflen, 0);

 if (ret < 0)
  conn->err = ret;


 return ret;
}
