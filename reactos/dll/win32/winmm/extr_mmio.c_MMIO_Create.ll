; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@MMIO_Create.MMIO_counter = internal global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@WINMM_cs = common dso_local global i32 0, align 4
@MMIOList = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @MMIO_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @MMIO_Create() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call i32 (...) @GetProcessHeap()
  %3 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %4 = call %struct.TYPE_7__* @HeapAlloc(i32 %2, i32 %3, i32 4)
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %1, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %0
  %8 = call i32 @EnterCriticalSection(i32* @WINMM_cs)
  br label %9

9:                                                ; preds = %19, %7
  %10 = load i64, i64* @MMIO_Create.MMIO_counter, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @MMIO_Create.MMIO_counter, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @MMIO_Create.MMIO_counter, align 8
  %15 = call i64 @MMIO_Get(i64 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %9

20:                                               ; preds = %17
  %21 = load i64, i64* @MMIO_Create.MMIO_counter, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MMIOList, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** @MMIOList, align 8
  %29 = call i32 @LeaveCriticalSection(i32* @WINMM_cs)
  br label %30

30:                                               ; preds = %20, %0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %31
}

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @MMIO_Get(i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
