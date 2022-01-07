
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ RealWaitForChar (int ,long,int *) ;
 scalar_t__ TMODE_RAW ;
 scalar_t__ curr_tmode ;
 int fill_input_buf (int ) ;
 int read_cmd_fd ;

void
mch_breakcheck()
{
    if (curr_tmode == TMODE_RAW && RealWaitForChar(read_cmd_fd, 0L, ((void*)0)))
 fill_input_buf(FALSE);
}
