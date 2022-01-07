
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 scalar_t__ opt_tcache ;
 int tsd_slow_update (int *) ;
 int tsd_tcache_data_init (int *) ;
 int tsd_tcache_enabled_set (int *,scalar_t__) ;

bool
tsd_tcache_enabled_data_init(tsd_t *tsd) {

 tsd_tcache_enabled_set(tsd, opt_tcache);
 tsd_slow_update(tsd);

 if (opt_tcache) {

  tsd_tcache_data_init(tsd);
 }

 return 0;
}
