; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_start_worker.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_start_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i32 0, align 4
@BGW_NEVER_RESTART = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@BGW_MAXLEN = common dso_local global i64 0, align 8
@BGW_EXTRALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_bgw_start_worker(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %11 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %12 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %19 = load i32, i32* @MyDatabaseId, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %22 = load i32, i32* @MyProcPid, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %24 = load i32, i32* @BGW_NEVER_RESTART, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %26 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  store i32 %26, i32* %25, align 4
  store i32* null, i32** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* @BGW_MAXLEN, align 8
  %31 = call i32 @StrNCpy(i32 %28, i8* %29, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* (...) @ts_extension_get_so_name()
  %35 = load i64, i64* @BGW_MAXLEN, align 8
  %36 = call i32 @StrNCpy(i32 %33, i8* %34, i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* @BGW_MAXLEN, align 8
  %41 = call i32 @StrNCpy(i32 %38, i8* %39, i64 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* @BGW_EXTRALEN, align 8
  %45 = icmp slt i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* @BGW_EXTRALEN, align 8
  %52 = call i32 @StrNCpy(i32 %49, i8* %50, i64 %51)
  %53 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_3__* %8, i32** %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %58

56:                                               ; preds = %3
  %57 = load i32*, i32** %9, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @StrNCpy(i32, i8*, i64) #1

declare dso_local i8* @ts_extension_get_so_name(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_3__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
