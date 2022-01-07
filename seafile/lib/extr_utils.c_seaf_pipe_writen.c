
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int seaf_pipe_t ;


 int writen (int ,void const*,size_t) ;

ssize_t seaf_pipe_writen (seaf_pipe_t fd, const void *vptr, size_t n)
{
    return writen (fd, vptr, n);
}
