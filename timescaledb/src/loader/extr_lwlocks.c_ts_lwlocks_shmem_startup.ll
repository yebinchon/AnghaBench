; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_lwlocks.c_ts_lwlocks_shmem_startup.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_lwlocks.c_ts_lwlocks_shmem_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@AddinShmemInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TS_LWLOCKS_SHMEM_NAME = common dso_local global i32 0, align 4
@ts_lwlocks = common dso_local global %struct.TYPE_5__* null, align 8
@CHUNK_APPEND_LWLOCK_TRANCHE_NAME = common dso_local global i32 0, align 4
@RENDEZVOUS_CHUNK_APPEND_LWLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_lwlocks_shmem_startup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = load i32, i32* @AddinShmemInitLock, align 4
  %4 = load i32, i32* @LW_EXCLUSIVE, align 4
  %5 = call i32 @LWLockAcquire(i32 %3, i32 %4)
  %6 = load i32, i32* @TS_LWLOCKS_SHMEM_NAME, align 4
  %7 = call %struct.TYPE_5__* @ShmemInitStruct(i32 %6, i32 4, i32* %1)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** @ts_lwlocks, align 8
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ts_lwlocks, align 8
  %12 = call i32 @memset(%struct.TYPE_5__* %11, i32 0, i32 4)
  %13 = load i32, i32* @CHUNK_APPEND_LWLOCK_TRANCHE_NAME, align 4
  %14 = call %struct.TYPE_6__* @GetNamedLWLockTranche(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ts_lwlocks, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  br label %18

18:                                               ; preds = %10, %0
  %19 = load i32, i32* @AddinShmemInitLock, align 4
  %20 = call i32 @LWLockRelease(i32 %19)
  %21 = load i32, i32* @RENDEZVOUS_CHUNK_APPEND_LWLOCK, align 4
  %22 = call i64 @find_rendezvous_variable(i32 %21)
  %23 = inttoptr i64 %22 to i32**
  store i32** %23, i32*** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ts_lwlocks, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32**, i32*** %2, align 8
  store i32* %26, i32** %27, align 8
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local %struct.TYPE_5__* @ShmemInitStruct(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @GetNamedLWLockTranche(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @find_rendezvous_variable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
