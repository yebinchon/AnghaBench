
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int writer_addr ;
struct socket_data {int sock; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int strm_value ;
struct TYPE_6__ {struct socket_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef int socklen_t ;


 int STRM_IO_FLUSH ;
 int STRM_IO_READ ;
 int STRM_IO_WRITE ;
 int STRM_NG ;
 int STRM_OK ;
 int accept (int ,struct sockaddr*,int*) ;
 int closesocket (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int strm_io_emit (TYPE_1__*,int ,int ,int (*) (TYPE_1__*,int )) ;
 int strm_io_new (int,int) ;
 int strm_raise (TYPE_1__*,char*) ;

__attribute__((used)) static int
accept_cb(strm_stream* task, strm_value data)
{
  struct socket_data *sd = task->data;
  struct sockaddr_in writer_addr;
  socklen_t writer_len;
  int sock;

  memset(&writer_addr, 0, sizeof(writer_addr));
  writer_len = sizeof(writer_addr);
  sock = accept(sd->sock, (struct sockaddr *)&writer_addr, &writer_len);
  if (sock < 0) {
    closesocket(sock);
    strm_raise(task, "socket error: listen");
    return STRM_NG;
  }

  strm_io_emit(task, strm_io_new(sock, STRM_IO_READ|STRM_IO_WRITE|STRM_IO_FLUSH),
               sd->sock, accept_cb);
  return STRM_OK;
}
