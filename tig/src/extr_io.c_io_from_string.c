
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {size_t bufalloc; size_t bufsize; int eof; int buf; int bufpos; } ;


 int io_init (struct io*) ;
 int io_realloc_buf (int *,size_t,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (int ,char const*,size_t) ;

bool
io_from_string(struct io *io, const char *str)
{
 size_t len = strlen(str);

 io_init(io);

 if (!io_realloc_buf(&io->buf, io->bufalloc, len))
  return 0;

 io->bufsize = io->bufalloc = len;
 io->bufpos = io->buf;
 io->eof = 1;
 strncpy(io->buf, str, len);

 return 1;
}
