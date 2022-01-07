
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; int st_size; } ;
struct fd_read_buffer {void* buf; void* end; void* beg; int fd; void* fixed; TYPE_2__* io; } ;
struct TYPE_6__ {unsigned int flags; } ;
typedef TYPE_1__ strm_stream ;
typedef TYPE_2__* strm_io ;
typedef int strm_callback ;
struct TYPE_7__ {TYPE_1__* read_stream; int fd; int mode; } ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 unsigned int STRM_IO_NOFILL ;
 unsigned int STRM_IO_NOWAIT ;
 int STRM_IO_READING ;
 int S_IFMT ;
 int S_IFREG ;
 scalar_t__ fstat (int ,struct stat*) ;
 struct fd_read_buffer* malloc (int) ;
 void* mmap (int *,int,int ,int ,int ,int ) ;
 int read_cb ;
 int read_close ;
 int readline_cb ;
 int stdio_read ;
 int strm_producer ;
 TYPE_1__* strm_stream_new (int ,int ,int ,void*) ;

__attribute__((used)) static strm_stream*
strm_readio(strm_io io)
{
  strm_callback cb = stdio_read;
  unsigned int flags = 0;

  if (io->read_stream == ((void*)0)) {
    struct fd_read_buffer *buf = malloc(sizeof(struct fd_read_buffer));
    struct stat st;

    io->mode |= STRM_IO_READING;
    buf->fd = io->fd;
    buf->io = io;




    if (fstat(io->fd, &st) == 0 && (st.st_mode & S_IFMT) == S_IFREG) {


      flags |= STRM_IO_NOWAIT;
      cb = read_cb;
      buf->beg = buf->end = buf->buf;

    }
    else {
      buf->beg = buf->end = buf->buf;
    }
    io->read_stream = strm_stream_new(strm_producer, cb, read_close, (void*)buf);
    io->read_stream->flags |= flags;
  }
  return io->read_stream;
}
