; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleGetDefaultCommConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleGetDefaultCommConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32*)* @_HandleGetDefaultCommConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_HandleGetDefaultCommConfig(i64 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %16, i32* %5, align 4
  br label %37

17:                                               ; preds = %12
  %18 = load i32*, i32** %9, align 8
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @GetDefaultCommConfigW(i32 %27, i32 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call i32 (...) @GetLastError()
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33, %23, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @GetDefaultCommConfigW(i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
