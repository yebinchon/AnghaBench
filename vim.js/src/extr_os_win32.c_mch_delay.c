
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 int WaitForChar (long) ;
 scalar_t__ mzthreads_allowed () ;
 int mzvim_check_threads () ;
 long p_mzq ;

void
mch_delay(
    long msec,
    int ignoreinput)
{



    if (ignoreinput)
     Sleep((int)msec);
    else
 WaitForChar(msec);

}
