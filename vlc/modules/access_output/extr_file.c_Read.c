
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {int* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_6__ {int i_buffer; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,int ,int ) ;

__attribute__((used)) static ssize_t Read( sout_access_out_t *p_access, block_t *p_buffer )
{
    int *fdp = p_access->p_sys, fd = *fdp;
    ssize_t val;

    do
        val = read(fd, p_buffer->p_buffer, p_buffer->i_buffer);
    while (val == -1 && errno == EINTR);
    return val;
}
