
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct io {scalar_t__ pipe; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ select (scalar_t__,int *,int *,int *,struct timeval*) ;

bool
io_can_read(struct io *io, bool can_block)
{
 struct timeval tv = { 0, 500 };
 fd_set fds;

 FD_ZERO(&fds);
 FD_SET(io->pipe, &fds);

 return select(io->pipe + 1, &fds, ((void*)0), ((void*)0), can_block ? ((void*)0) : &tv) > 0;
}
