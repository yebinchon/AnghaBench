
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int pipe; } ;


 int memset (struct io*,int ,int) ;

__attribute__((used)) static void
io_init(struct io *io)
{
 memset(io, 0, sizeof(*io));
 io->pipe = -1;
}
