; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner.c__planner_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner.c__planner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@planner_hook = common dso_local global i32 0, align 4
@prev_planner_hook = common dso_local global i32 0, align 4
@timescaledb_planner = common dso_local global i32 0, align 4
@set_rel_pathlist_hook = common dso_local global i32 0, align 4
@prev_set_rel_pathlist_hook = common dso_local global i32 0, align 4
@timescaledb_set_rel_pathlist = common dso_local global i32 0, align 4
@get_relation_info_hook = common dso_local global i32 0, align 4
@prev_get_relation_info_hook = common dso_local global i32 0, align 4
@timescaledb_get_relation_info_hook = common dso_local global i32 0, align 4
@create_upper_paths_hook = common dso_local global i32 0, align 4
@prev_create_upper_paths_hook = common dso_local global i32 0, align 4
@timescale_create_upper_paths_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_planner_init() #0 {
  %1 = load i32, i32* @planner_hook, align 4
  store i32 %1, i32* @prev_planner_hook, align 4
  %2 = load i32, i32* @timescaledb_planner, align 4
  store i32 %2, i32* @planner_hook, align 4
  %3 = load i32, i32* @set_rel_pathlist_hook, align 4
  store i32 %3, i32* @prev_set_rel_pathlist_hook, align 4
  %4 = load i32, i32* @timescaledb_set_rel_pathlist, align 4
  store i32 %4, i32* @set_rel_pathlist_hook, align 4
  %5 = load i32, i32* @get_relation_info_hook, align 4
  store i32 %5, i32* @prev_get_relation_info_hook, align 4
  %6 = load i32, i32* @timescaledb_get_relation_info_hook, align 4
  store i32 %6, i32* @get_relation_info_hook, align 4
  %7 = load i32, i32* @create_upper_paths_hook, align 4
  store i32 %7, i32* @prev_create_upper_paths_hook, align 4
  %8 = load i32, i32* @timescale_create_upper_paths_hook, align 4
  store i32 %8, i32* @create_upper_paths_hook, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
