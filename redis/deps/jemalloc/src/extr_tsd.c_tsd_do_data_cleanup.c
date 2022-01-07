
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int arena_cleanup (int *) ;
 int arenas_tdata_cleanup (int *) ;
 int iarena_cleanup (int *) ;
 int prof_tdata_cleanup (int *) ;
 int tcache_cleanup (int *) ;
 int tsd_witness_tsdp_get_unsafe (int *) ;
 int witnesses_cleanup (int ) ;

__attribute__((used)) static void
tsd_do_data_cleanup(tsd_t *tsd) {
 prof_tdata_cleanup(tsd);
 iarena_cleanup(tsd);
 arena_cleanup(tsd);
 arenas_tdata_cleanup(tsd);
 tcache_cleanup(tsd);
 witnesses_cleanup(tsd_witness_tsdp_get_unsafe(tsd));
}
