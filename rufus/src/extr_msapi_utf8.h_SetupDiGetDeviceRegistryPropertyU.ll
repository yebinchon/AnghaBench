; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SetupDiGetDeviceRegistryPropertyU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SetupDiGetDeviceRegistryPropertyU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@wPropertyBuffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i64, i32, i32)* @SetupDiGetDeviceRegistryPropertyU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetupDiGetDeviceRegistryPropertyU(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @walloc(i64 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i64, i64* @wPropertyBuffer, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @SetupDiGetDeviceRegistryPropertyW(i32 %22, i32 %23, i32 %24, i32 %25, i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = call i32 (...) @GetLastError()
  store i32 %30, i32* %16, align 4
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %7
  %34 = load i64, i64* @wPropertyBuffer, align 8
  %35 = load i64, i64* %12, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @wchar_to_utf8_no_alloc(i64 %34, i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 (...) @GetLastError()
  store i32 %41, i32* %16, align 4
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %40, %33, %7
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @wfree(i64 %44)
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @SetLastError(i32 %46)
  %48 = load i64, i64* %15, align 8
  ret i64 %48
}

declare dso_local i32 @walloc(i64, i32) #1

declare dso_local i64 @SetupDiGetDeviceRegistryPropertyW(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @wchar_to_utf8_no_alloc(i64, i8*, i32) #1

declare dso_local i32 @wfree(i64) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
