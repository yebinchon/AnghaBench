; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_runFrameTest.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_runFrameTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Error in simple mode on test seed %u: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error in streaming mode on test seed %u: %s\0A\00", align 1
@gt_frame = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Error in dictionary mode on test seed %u: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @runFrameTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runFrameTest(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i32 @initDictInfo(i32 0, i32 0, i32* null, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @generateFrame(i64 %14, i32* %4, i32 %15)
  %17 = load i64*, i64** %3, align 8
  store i64 %16, i64* %17, align 8
  %18 = call i64 @testDecodeSimple(i32* %4)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ZSTD_isError(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @ZSTD_getErrorName(i64 %25)
  %27 = call i32 @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  store i32 1, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = call i64 @testDecodeStreaming(i32* %4)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @ZSTD_isError(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ZSTD_getErrorName(i64 %36)
  %38 = call i32 @DISPLAY(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  store i32 1, i32* %2, align 4
  br label %54

39:                                               ; preds = %28
  %40 = load i64*, i64** %3, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @gt_frame, align 4
  %43 = call i64 @testDecodeWithDict(i64 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @ZSTD_isError(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @ZSTD_getErrorName(i64 %50)
  %52 = call i32 @DISPLAY(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %47, %33, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @initDictInfo(i32, i32, i32*, i32) #1

declare dso_local i64 @generateFrame(i64, i32*, i32) #1

declare dso_local i64 @testDecodeSimple(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i64 @testDecodeStreaming(i32*) #1

declare dso_local i64 @testDecodeWithDict(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
