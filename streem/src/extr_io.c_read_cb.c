
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct fd_read_buffer {scalar_t__ end; scalar_t__ buf; scalar_t__ beg; int fd; } ;
typedef int strm_value ;
struct TYPE_8__ {struct fd_read_buffer* data; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ strm_int ;


 scalar_t__ BUFSIZ ;
 int STRM_OK ;
 int read_str (scalar_t__,scalar_t__) ;
 int readline_cb (TYPE_1__*,int ) ;
 int strm_io_emit (TYPE_1__*,int ,int ,int (*) (TYPE_1__*,int )) ;
 int strm_io_stop (TYPE_1__*,int ) ;
 int strm_nil_value () ;
 scalar_t__ strm_read (int ,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
read_cb(strm_stream* strm, strm_value data)
{
  struct fd_read_buffer *b = strm->data;
  strm_int count;
  strm_int n;

  count = BUFSIZ-(b->end-b->buf);
  n = strm_read(b->fd, b->end, count);
  if (n <= 0) {
    if (b->buf < b->end) {
      strm_value s = read_str(b->beg, b->end-b->beg);
      b->beg = b->end = b->buf;
      strm_io_emit(strm, s, b->fd, read_cb);
    }
    else {
      strm_io_stop(strm, b->fd);
    }
    return STRM_OK;
  }
  b->end += n;
  (*readline_cb)(strm, strm_nil_value());
  return STRM_OK;
}
