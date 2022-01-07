; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c__createProviderEnumerator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c__createProviderEnumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i32 }

@providerTable = common dso_local global %struct.TYPE_6__* null, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@WNET_ENUMERATOR_TYPE_PROVIDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64, i64, i64, i64, i32)* @_createProviderEnumerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @_createProviderEnumerator(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @providerTable, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @providerTable, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  br label %47

21:                                               ; preds = %14
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %24 = call %struct.TYPE_5__* @HeapAlloc(i32 %22, i32 %23, i32 4)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %11, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32, i32* @WNET_ENUMERATOR_TYPE_PROVIDER, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %27, %21
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %48
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
