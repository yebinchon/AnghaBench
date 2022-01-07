
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seaf_pipe_t ;


 int read (int ,char*,int) ;

int
seaf_pipe_read (seaf_pipe_t fd, char *buf, int len)
{
    return read (fd, buf, len);
}
