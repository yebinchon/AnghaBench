
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket_data {int sock; } ;
typedef int strm_value ;
struct TYPE_3__ {struct socket_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int closesocket (int ) ;
 int free (struct socket_data*) ;

__attribute__((used)) static int
server_close(strm_stream* task, strm_value d)
{
  struct socket_data *sd = task->data;

  closesocket(sd->sock);
  free(sd);
  return STRM_OK;
}
