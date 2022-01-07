
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iostat_cbdata_t ;


 int are_vdevs_in_pool (int,char**,int *,int *) ;
 int get_interval_count (int*,char**,float*,unsigned long*) ;

__attribute__((used)) static void
get_interval_count_filter_guids(int *argc, char **argv, float *interval,
    unsigned long *count, iostat_cbdata_t *cb)
{
 char **tmpargv = argv;
 int argc_for_interval = 0;


 if (*argc >= 1 && !are_vdevs_in_pool(1, &argv[*argc - 1], ((void*)0), cb)) {




  argc_for_interval++;

  if (*argc >= 2 &&
      !are_vdevs_in_pool(1, &argv[*argc - 2], ((void*)0), cb)) {




   argc_for_interval++;
  }
 }


 tmpargv = &argv[*argc - argc_for_interval];

 *argc = *argc - argc_for_interval;
 get_interval_count(&argc_for_interval, tmpargv,
     interval, count);
}
