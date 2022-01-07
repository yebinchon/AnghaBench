
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;

int _aexit_rtn(int exitcode)
{
    _exit(exitcode);
    return 0;
}
