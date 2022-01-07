
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ngx_pipe_generation ;

void
ngx_increase_pipe_generation(void)
{
    ngx_pipe_generation++;
}
