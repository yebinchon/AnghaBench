
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seaf_pipe_t ;


 int close (int ) ;

int
seaf_pipe_close (seaf_pipe_t fd)
{
    return close (fd);
}
