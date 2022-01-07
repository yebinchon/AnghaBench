; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_setsize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_wrapper = type { i64, i32, i64 }

@S_OK = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.handle_wrapper*, i64)* @handle_setsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_setsize(%struct.handle_wrapper* %0, i64 %1) #0 {
  %3 = alloca %struct.handle_wrapper*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.handle_wrapper* %0, %struct.handle_wrapper** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @S_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %9 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %8, i32 0, i32 1
  %10 = call i32 @EnterCriticalSection(i32* %9)
  %11 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %12 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %18 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @GMEM_MOVEABLE, align 4
  %22 = call i64 @GlobalReAlloc(i64 %19, i64 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %28 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %31 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.handle_wrapper*, %struct.handle_wrapper** %3, align 8
  %37 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %36, i32 0, i32 1
  %38 = call i32 @LeaveCriticalSection(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @GlobalReAlloc(i64, i64, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
