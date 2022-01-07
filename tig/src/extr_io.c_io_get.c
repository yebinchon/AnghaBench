
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct buffer {int dummy; } ;


 int io_get_line (struct io*,struct buffer*,int,int *,int,int ) ;

bool
io_get(struct io *io, struct buffer *buf, int c, bool can_read)
{
 return io_get_line(io, buf, c, ((void*)0), can_read, 0);
}
