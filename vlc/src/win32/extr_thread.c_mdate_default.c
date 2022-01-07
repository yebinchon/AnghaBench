
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;


 int mdate_perf () ;
 int vlc_threads_setup (int *) ;

__attribute__((used)) static vlc_tick_t mdate_default(void)
{
    vlc_threads_setup(((void*)0));
    return mdate_perf();
}
