
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {size_t recv_buf_len; int recv_buf; } ;
typedef TYPE_1__ MockConnection ;
typedef int Connection ;


 size_t MOCK_MAX_BUF_SIZE ;
 int memcpy (int ,char*,size_t) ;

ssize_t
ts_connection_mock_set_recv_buf(Connection *conn, char *buf, size_t buf_len)
{
 MockConnection *mock = (MockConnection *) conn;

 if (buf_len > MOCK_MAX_BUF_SIZE)
  return -1;

 memcpy(mock->recv_buf, buf, buf_len);
 mock->recv_buf_len = buf_len;
 return mock->recv_buf_len;
}
