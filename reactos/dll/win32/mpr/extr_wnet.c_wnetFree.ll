; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnetFree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnetFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@providerTable = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wnetFree() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %3 = icmp ne %struct.TYPE_5__* %2, null
  br i1 %3, label %4, label %41

4:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %29, %4
  %6 = load i64, i64* %1, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @HeapFree(i32 %12, i32 0, %struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @FreeModule(i32 %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i64, i64* %1, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %1, align 8
  br label %5

32:                                               ; preds = %5
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, %struct.TYPE_5__* %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @providerTable, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, %struct.TYPE_5__* %39)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @providerTable, align 8
  br label %41

41:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FreeModule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
