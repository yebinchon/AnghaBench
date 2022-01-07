; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_init.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_init.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMESCALEDB_VERSION_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @TIMESCALEDB_VERSION_MOD, align 4
  %2 = call i32 @ts_extension_check_version(i32 %1)
  %3 = call i32 (...) @ts_extension_check_server_version()
  %4 = call i32 (...) @ts_bgw_check_loader_api_version()
  %5 = call i32 (...) @_cache_init()
  %6 = call i32 (...) @_hypertable_cache_init()
  %7 = call i32 (...) @_cache_invalidate_init()
  %8 = call i32 (...) @_planner_init()
  %9 = call i32 (...) @_constraint_aware_append_init()
  %10 = call i32 (...) @_chunk_append_init()
  %11 = call i32 (...) @_event_trigger_init()
  %12 = call i32 (...) @_process_utility_init()
  %13 = call i32 (...) @_guc_init()
  %14 = call i32 (...) @_conn_plain_init()
  ret void
}

declare dso_local i32 @ts_extension_check_version(i32) #1

declare dso_local i32 @ts_extension_check_server_version(...) #1

declare dso_local i32 @ts_bgw_check_loader_api_version(...) #1

declare dso_local i32 @_cache_init(...) #1

declare dso_local i32 @_hypertable_cache_init(...) #1

declare dso_local i32 @_cache_invalidate_init(...) #1

declare dso_local i32 @_planner_init(...) #1

declare dso_local i32 @_constraint_aware_append_init(...) #1

declare dso_local i32 @_chunk_append_init(...) #1

declare dso_local i32 @_event_trigger_init(...) #1

declare dso_local i32 @_process_utility_init(...) #1

declare dso_local i32 @_guc_init(...) #1

declare dso_local i32 @_conn_plain_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
