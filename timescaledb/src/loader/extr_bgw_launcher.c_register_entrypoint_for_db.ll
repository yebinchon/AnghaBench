; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_register_entrypoint_for_db.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_register_entrypoint_for_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TimescaleDB Background Worker Scheduler\00", align 1
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BGW_NEVER_RESTART = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@EXTENSION_NAME = common dso_local global i8* null, align 8
@BGW_ENTRYPOINT_FUNCNAME = common dso_local global i8* null, align 8
@MyProcPid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32**)* @register_entrypoint_for_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_entrypoint_for_db(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 36)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BGW_MAXLEN, align 4
  %12 = call i32 @snprintf(i32 %10, i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %14 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BGW_NEVER_RESTART, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGW_MAXLEN, align 4
  %24 = load i8*, i8** @EXTENSION_NAME, align 8
  %25 = call i32 @snprintf(i32 %22, i32 %23, i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BGW_MAXLEN, align 4
  %29 = load i8*, i8** @BGW_ENTRYPOINT_FUNCNAME, align 8
  %30 = call i32 @snprintf(i32 %27, i32 %28, i8* %29)
  %31 = load i32, i32* @MyProcPid, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ObjectIdGetDatum(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32 %37, i32* %5, i32 4)
  %39 = load i32**, i32*** %6, align 8
  %40 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_4__* %7, i32** %39)
  ret i32 %40
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_4__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
