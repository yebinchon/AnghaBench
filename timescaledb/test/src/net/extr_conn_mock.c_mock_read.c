
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ recv_buf_offset; scalar_t__ recv_buf_len; size_t recv_buf; } ;
typedef TYPE_1__ MockConnection ;
typedef int Connection ;


 int memcpy (char*,size_t,size_t) ;
 size_t rand () ;

__attribute__((used)) static ssize_t
mock_read(Connection *conn, char *buf, size_t readlen)
{
 size_t bytes_to_read = 0;
 size_t max = readlen;
 MockConnection *mock = (MockConnection *) conn;

 if (mock->recv_buf_offset >= mock->recv_buf_len)
  return 0;

 if (max >= mock->recv_buf_len - mock->recv_buf_offset)
  max = mock->recv_buf_len - mock->recv_buf_offset;


 while (bytes_to_read == 0)
 {
  bytes_to_read = rand() % (max + 1);
 }
 memcpy(buf, mock->recv_buf + mock->recv_buf_offset, bytes_to_read);
 mock->recv_buf_offset += bytes_to_read;

 return bytes_to_read;
}
