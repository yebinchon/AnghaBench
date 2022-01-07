; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_load_driver_devices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_load_driver_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32***, i32***, i64*, i64*)* }

@drvs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S_OK = common dso_local global i32 0, align 4
@DEVICE_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @load_driver_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_driver_devices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32 (i32, i32***, i32***, i64*, i64*)*, i32 (i32, i32***, i32***, i64*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drvs, i32 0, i32 0), align 8
  %12 = icmp ne i32 (i32, i32***, i32***, i64*, i64*)* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @S_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i32 (i32, i32***, i32***, i64*, i64*)*, i32 (i32, i32***, i32***, i64*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drvs, i32 0, i32 0), align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 %16(i32 %17, i32*** %4, i32*** %5, i64* %6, i64* %7)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32**, i32*** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @DEVICE_STATE_ACTIVE, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32* @MMDevice_Create(i32* %33, i32** %36, i32 %37, i32 %38, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @set_format(i32* %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %25

49:                                               ; preds = %25
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32**, i32*** %5, align 8
  %52 = call i32 @HeapFree(i32 %50, i32 0, i32** %51)
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32**, i32*** %4, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, i32** %54)
  %56 = load i32, i32* @S_OK, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %22, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @MMDevice_Create(i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @set_format(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32**) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
