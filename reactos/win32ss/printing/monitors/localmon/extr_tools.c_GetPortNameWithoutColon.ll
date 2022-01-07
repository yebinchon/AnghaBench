; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_tools.c_GetPortNameWithoutColon.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_tools.c_GetPortNameWithoutColon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"DllAllocSplMem failed with error %lu!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetPortNameWithoutColon(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @wcslen(i32* %7)
  %9 = sub i64 %8, 1
  store i64 %9, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 58
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %16, i64* %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 4
  %21 = call i32 @DllAllocSplMem(i64 %20)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %29, i64* %3, align 8
  br label %38

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = mul i64 %34, 4
  %36 = call i32 @CopyMemory(i32 %32, i32* %33, i64 %35)
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %30, %26, %15
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @DllAllocSplMem(i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CopyMemory(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
