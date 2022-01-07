; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_ts_bgw_cluster_launcher_register.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_ts_bgw_cluster_launcher_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32 }

@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"TimescaleDB Background Worker Launcher\00", align 1
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BGW_LAUNCHER_RESTART_TIME_S = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@EXTENSION_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"ts_bgw_cluster_launcher_main\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_cluster_launcher_register() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 40)
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @BGW_MAXLEN, align 4
  %6 = call i32 @snprintf(i32 %4, i32 %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %8 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @BGW_LAUNCHER_RESTART_TIME_S, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BGW_MAXLEN, align 4
  %19 = load i8*, i8** @EXTENSION_NAME, align 8
  %20 = call i32 @snprintf(i32 %17, i32 %18, i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGW_MAXLEN, align 4
  %24 = call i32 @snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @RegisterBackgroundWorker(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @RegisterBackgroundWorker(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
