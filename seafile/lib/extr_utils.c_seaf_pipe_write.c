
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seaf_pipe_t ;


 int write (int ,char const*,int) ;

int
seaf_pipe_write (seaf_pipe_t fd, const char *buf, int len)
{
    return write (fd, buf, len);
}
