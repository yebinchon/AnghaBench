
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ emsg_silent ;
 int flush_buffers (int ) ;
 int vim_beep () ;

void
beep_flush()
{
    if (emsg_silent == 0)
    {
 flush_buffers(FALSE);
 vim_beep();
    }
}
