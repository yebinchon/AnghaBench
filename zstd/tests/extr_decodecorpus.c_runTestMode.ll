; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_runTestMode.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_runTestMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_TO_MICRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"seed: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0D%u/%u        \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\0D%u           \00", align 1
@gt_frame = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"\0D%u tests completed: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64)* @runTestMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runTestMode(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = call i32 (...) @UTIL_getTime()
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SEC_TO_MICRO, align 4
  %17 = mul i32 %15, %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21, %4
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %66, %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @UTIL_clockSpanMicro(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ true, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %69

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, i32, ...) @DISPLAYUPDATE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, i32, ...) @DISPLAYUPDATE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @gt_frame, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @runFrameTest(i64* %6)
  br label %59

57:                                               ; preds = %51
  %58 = call i32 @runBlockTest(i64* %6)
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %73

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %29

69:                                               ; preds = %38
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @UTIL_getTime(...) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i64 @UTIL_clockSpanMicro(i32) #1

declare dso_local i32 @DISPLAYUPDATE(i8*, i32, ...) #1

declare dso_local i32 @runFrameTest(i64*) #1

declare dso_local i32 @runBlockTest(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
