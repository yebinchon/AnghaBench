
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int DefineCustomBoolVariable (int ,char*,int *,int *,int,int ,int ,int *,int *,int *) ;
 int GUC_DISABLE_LOAD_NAME ;
 int INFO ;
 int PGC_USERSET ;
 int PointerGetDatum (int *) ;
 int elog (int ,char*) ;
 int extension_load_without_preload () ;
 int extension_mark_loader_present () ;
 int guc_disable_load ;
 int inval_cache_callback ;
 int post_analyze_hook ;
 int post_parse_analyze_hook ;
 int prev_post_parse_analyze_hook ;
 int prev_shmem_startup_hook ;
 int process_shared_preload_libraries_in_progress ;
 int shmem_startup_hook ;
 int timescale_shmem_startup_hook ;
 int ts_bgw_cluster_launcher_register () ;
 int ts_bgw_counter_setup_gucs () ;
 int ts_bgw_counter_shmem_alloc () ;
 int ts_bgw_interface_register_api_version () ;
 int ts_bgw_message_queue_alloc () ;
 int ts_lwlocks_shmem_alloc () ;

void
_PG_init(void)
{
 if (!process_shared_preload_libraries_in_progress)
 {
  extension_load_without_preload();
 }
 extension_mark_loader_present();

 elog(INFO, "timescaledb loaded");

 ts_bgw_counter_shmem_alloc();
 ts_bgw_message_queue_alloc();
 ts_lwlocks_shmem_alloc();
 ts_bgw_cluster_launcher_register();
 ts_bgw_counter_setup_gucs();
 ts_bgw_interface_register_api_version();


 DefineCustomBoolVariable(GUC_DISABLE_LOAD_NAME,
        "Disable the loading of the actual extension",
        ((void*)0),
        &guc_disable_load,
        0,
        PGC_USERSET,
        0,
        ((void*)0),
        ((void*)0),
        ((void*)0));





 CacheRegisterRelcacheCallback(inval_cache_callback, PointerGetDatum(((void*)0)));





 prev_post_parse_analyze_hook = post_parse_analyze_hook;

 prev_shmem_startup_hook = shmem_startup_hook;

 post_parse_analyze_hook = post_analyze_hook;
 shmem_startup_hook = timescale_shmem_startup_hook;
}
