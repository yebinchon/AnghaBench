
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fd_open (int fd, int flags)
{
    (void) flags;
    return fd;
}
