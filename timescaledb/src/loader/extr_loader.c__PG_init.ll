; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"timescaledb loaded\00", align 1
@GUC_DISABLE_LOAD_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Disable the loading of the actual extension\00", align 1
@guc_disable_load = common dso_local global i32 0, align 4
@PGC_USERSET = common dso_local global i32 0, align 4
@inval_cache_callback = common dso_local global i32 0, align 4
@post_parse_analyze_hook = common dso_local global i32 0, align 4
@prev_post_parse_analyze_hook = common dso_local global i32 0, align 4
@shmem_startup_hook = common dso_local global i32 0, align 4
@prev_shmem_startup_hook = common dso_local global i32 0, align 4
@post_analyze_hook = common dso_local global i32 0, align 4
@timescale_shmem_startup_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @extension_load_without_preload()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @extension_mark_loader_present()
  %7 = load i32, i32* @INFO, align 4
  %8 = call i32 @elog(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @ts_bgw_counter_shmem_alloc()
  %10 = call i32 (...) @ts_bgw_message_queue_alloc()
  %11 = call i32 (...) @ts_lwlocks_shmem_alloc()
  %12 = call i32 (...) @ts_bgw_cluster_launcher_register()
  %13 = call i32 (...) @ts_bgw_counter_setup_gucs()
  %14 = call i32 (...) @ts_bgw_interface_register_api_version()
  %15 = load i32, i32* @GUC_DISABLE_LOAD_NAME, align 4
  %16 = load i32, i32* @PGC_USERSET, align 4
  %17 = call i32 @DefineCustomBoolVariable(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* @guc_disable_load, i32 0, i32 %16, i32 0, i32* null, i32* null, i32* null)
  %18 = load i32, i32* @inval_cache_callback, align 4
  %19 = call i32 @PointerGetDatum(i32* null)
  %20 = call i32 @CacheRegisterRelcacheCallback(i32 %18, i32 %19)
  %21 = load i32, i32* @post_parse_analyze_hook, align 4
  store i32 %21, i32* @prev_post_parse_analyze_hook, align 4
  %22 = load i32, i32* @shmem_startup_hook, align 4
  store i32 %22, i32* @prev_shmem_startup_hook, align 4
  %23 = load i32, i32* @post_analyze_hook, align 4
  store i32 %23, i32* @post_parse_analyze_hook, align 4
  %24 = load i32, i32* @timescale_shmem_startup_hook, align 4
  store i32 %24, i32* @shmem_startup_hook, align 4
  ret void
}

declare dso_local i32 @extension_load_without_preload(...) #1

declare dso_local i32 @extension_mark_loader_present(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_bgw_counter_shmem_alloc(...) #1

declare dso_local i32 @ts_bgw_message_queue_alloc(...) #1

declare dso_local i32 @ts_lwlocks_shmem_alloc(...) #1

declare dso_local i32 @ts_bgw_cluster_launcher_register(...) #1

declare dso_local i32 @ts_bgw_counter_setup_gucs(...) #1

declare dso_local i32 @ts_bgw_interface_register_api_version(...) #1

declare dso_local i32 @DefineCustomBoolVariable(i32, i8*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CacheRegisterRelcacheCallback(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
