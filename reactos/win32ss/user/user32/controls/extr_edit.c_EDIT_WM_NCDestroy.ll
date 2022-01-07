; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_NCDestroy.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_NCDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @EDIT_WM_NCDestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_NCDestroy(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @LocalFree(i64 %20)
  br label %22

22:                                               ; preds = %17, %9, %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @LocalFree(i64 %38)
  br label %40

40:                                               ; preds = %35, %27, %22
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_6__* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %3, align 8
  br label %46

46:                                               ; preds = %49, %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %4, align 8
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, %struct.TYPE_6__* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %3, align 8
  br label %46

57:                                               ; preds = %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SetWindowLongPtrW(i32 %60, i32 0, i32 0)
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @HeapFree(i32 %62, i32 0, %struct.TYPE_6__* %65)
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = call i32 @HeapFree(i32 %67, i32 0, %struct.TYPE_6__* %68)
  ret i32 0
}

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_6__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
