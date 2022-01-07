
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int seaf_pipe_t ;


 int readn (int ,void*,size_t) ;

ssize_t seaf_pipe_readn (seaf_pipe_t fd, void *vptr, size_t n)
{
    return readn (fd, vptr, n);
}
