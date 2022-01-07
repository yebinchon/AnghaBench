; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_wrapper = type { %struct.TYPE_4__, i32*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.handle_wrapper*)* @handle_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_release(%struct.handle_wrapper* %0) #0 {
  %2 = alloca %struct.handle_wrapper*, align 8
  %3 = alloca i32, align 4
  store %struct.handle_wrapper* %0, %struct.handle_wrapper** %2, align 8
  %4 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %5 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %4, i32 0, i32 3
  %6 = call i32 @InterlockedDecrement(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %11 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %16 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @GlobalFree(i32* %17)
  %19 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %20 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %23 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %30 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %29, i32 0, i32 0
  %31 = call i32 @DeleteCriticalSection(%struct.TYPE_4__* %30)
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.handle_wrapper*, %struct.handle_wrapper** %2, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.handle_wrapper* %33)
  br label %35

35:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

declare dso_local i32 @DeleteCriticalSection(%struct.TYPE_4__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.handle_wrapper*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
