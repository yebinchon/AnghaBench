; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_new_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_new_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_object(%struct.handle_table* %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_6__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.handle_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %15 = icmp ne %struct.TYPE_6__** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.TYPE_6__* @HeapAlloc(i32 %19, i32 0, i64 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.handle_table*, %struct.handle_table** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = call i32 @alloc_handle(%struct.handle_table* %35, %struct.TYPE_6__* %36, i32* %13)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %26
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, %struct.TYPE_6__* %41)
  br label %50

43:                                               ; preds = %26
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %45 = icmp ne %struct.TYPE_6__** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @alloc_handle(%struct.handle_table*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
