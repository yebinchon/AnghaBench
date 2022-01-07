; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_tools.c_AllocAndRegQueryWSZ.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_tools.c_AllocAndRegQueryWSZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"RegQueryValueExW failed with status %ld!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DllAllocSplMem failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllocAndRegQueryWSZ(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @RegQueryValueExW(i32 %9, i32 %10, i32* null, i32* null, i32* null, i32* %6)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32* null, i32** %3, align 8
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @DllAllocSplMem(i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %40

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @RegQueryValueExW(i32 %26, i32 %27, i32* null, i32* null, i32* %28, i32* %6)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @DllFreeSplMem(i32* %36)
  store i32* null, i32** %3, align 8
  br label %40

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %3, align 8
  br label %40

40:                                               ; preds = %38, %33, %23, %15
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32* @DllAllocSplMem(i32) #1

declare dso_local i32 @DllFreeSplMem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
