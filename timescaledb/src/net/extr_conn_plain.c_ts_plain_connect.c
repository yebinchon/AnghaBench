
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; int ai_flags; } ;
typedef int strport ;
struct TYPE_4__ {int sock; int err; } ;
typedef TYPE_1__ Connection ;


 int AF_UNSPEC ;
 int AI_NUMERICSERV ;
 int DEFAULT_TIMEOUT_MSEC ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int INVALID_SOCKET ;
 scalar_t__ IS_SOCKET_ERROR (int) ;
 int MAX_PORT ;
 int SOCKET_ERROR ;
 int SOCK_STREAM ;
 int WSAConnect (int,int ,int ,int *,int *,int *,int *) ;
 int WSAHOST_NOT_FOUND ;
 int WSASetLastError (int ) ;
 int WSASocket (int ,int ,int ,int *,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 int connect (int,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int set_error (int ) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ ts_plain_set_timeout (TYPE_1__*,int ) ;

int
ts_plain_connect(Connection *conn, const char *host, const char *servname, int port)
{
 char strport[6];
 struct addrinfo *ainfo, hints = {
  .ai_family = AF_UNSPEC,
  .ai_socktype = SOCK_STREAM,
 };
 int ret;

 if (((void*)0) == servname && (port <= 0 || port > MAX_PORT))
 {
  set_error(EINVAL);
  return -1;
 }


 if (port > 0 && port <= MAX_PORT)
 {
  snprintf(strport, sizeof(strport), "%d", port);
  servname = strport;
  hints.ai_flags = AI_NUMERICSERV;
 }


 ret = getaddrinfo(host, servname, &hints, &ainfo);

 if (ret != 0)
 {
  ret = SOCKET_ERROR;
  errno = EADDRNOTAVAIL;

  goto out;
 }
 ret = conn->sock = socket(ainfo->ai_family, ainfo->ai_socktype, ainfo->ai_protocol);


 if (IS_SOCKET_ERROR(ret))
  goto out_addrinfo;





 if (ts_plain_set_timeout(conn, DEFAULT_TIMEOUT_MSEC) < 0)
 {
  ret = SOCKET_ERROR;
  goto out_addrinfo;
 }





 ret = connect(conn->sock, ainfo->ai_addr, ainfo->ai_addrlen);


out_addrinfo:
 freeaddrinfo(ainfo);

out:
 if (IS_SOCKET_ERROR(ret))
 {
  conn->err = ret;
  return -1;
 }

 return 0;
}
