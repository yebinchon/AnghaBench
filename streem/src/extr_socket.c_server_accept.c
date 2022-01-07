
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct socket_data {int sock; } ;
typedef int strm_value ;
struct TYPE_4__ {struct socket_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int accept_cb ;
 int strm_io_start_read (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
server_accept(strm_stream* task, strm_value data)
{
  struct socket_data *sd = task->data;

  strm_io_start_read(task, sd->sock, accept_cb);
  return STRM_OK;
}
