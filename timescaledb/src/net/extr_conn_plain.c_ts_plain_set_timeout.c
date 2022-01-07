
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct TYPE_3__ {void* err; int sock; } ;
typedef unsigned long DWORD ;
typedef TYPE_1__ Connection ;


 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 void* setsockopt (int ,int ,int ,char const*,int) ;

int
ts_plain_set_timeout(Connection *conn, unsigned long millis)
{







 struct timeval timeout = {
  .tv_sec = millis / 1000L,
  .tv_usec = (millis % 1000L) * 1000L,
 };
 int optlen = sizeof(struct timeval);






 conn->err = setsockopt(conn->sock, SOL_SOCKET, SO_RCVTIMEO, (const char *) &timeout, optlen);

 if (conn->err != 0)
  return -1;

 conn->err = setsockopt(conn->sock, SOL_SOCKET, SO_SNDTIMEO, (const char *) &timeout, optlen);

 if (conn->err != 0)
  return -1;

 return 0;
}
