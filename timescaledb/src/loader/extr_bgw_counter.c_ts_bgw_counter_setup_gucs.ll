; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_counter.c_ts_bgw_counter_setup_gucs.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_counter.c_ts_bgw_counter_setup_gucs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"timescaledb.max_background_workers\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Maximum background worker processes allocated to TimescaleDB\00", align 1
@.str.2 = private unnamed_addr constant [147 x i8] c"Max background worker processes allocated to TimescaleDB - set to at least 1 + number of databases in Postgres instance to use background workers \00", align 1
@ts_guc_max_background_workers = common dso_local global i32 0, align 4
@PGC_POSTMASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_counter_setup_gucs() #0 {
  %1 = load i32, i32* @ts_guc_max_background_workers, align 4
  %2 = load i32, i32* @PGC_POSTMASTER, align 4
  %3 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i64 0, i64 0), i32* @ts_guc_max_background_workers, i32 %1, i32 0, i32 1000, i32 %2, i32 0, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
