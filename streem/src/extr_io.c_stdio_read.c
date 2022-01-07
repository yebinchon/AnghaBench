
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fd_read_buffer {int fd; } ;
typedef int strm_value ;
struct TYPE_4__ {struct fd_read_buffer* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int read_cb ;
 int strm_io_start_read (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
stdio_read(strm_stream* strm, strm_value data)
{
  struct fd_read_buffer *b = strm->data;

  strm_io_start_read(strm, b->fd, read_cb);
  return STRM_OK;
}
