
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ isatty (int ) ;
 int read_cmd_fd ;

int
mch_input_isatty()
{
    if (isatty(read_cmd_fd))
        return TRUE;
    return FALSE;
}
