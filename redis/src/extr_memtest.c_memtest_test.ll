; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_test.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Addressing test\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Random fill\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Solid fill\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Checkerboard fill\00", align 1
@ULONG_ONEZERO = common dso_local global i32 0, align 4
@ULONG_ZEROONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_test(i64* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %101, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @memtest_addressing(i64* %24, i64 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 (...) @memtest_progress_end()
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @memtest_fill_random(i64* %43, i64 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (...) @memtest_progress_end()
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @memtest_compare_times(i64* %52, i64 %53, i32 %54, i32 4, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %51
  %67 = load i64*, i64** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @memtest_fill_value(i64* %67, i64 %68, i32 0, i64 -1, i8 signext 83, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (...) @memtest_progress_end()
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @memtest_compare_times(i64* %76, i64 %77, i32 %78, i32 4, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %75
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @ULONG_ONEZERO, align 4
  %94 = load i64, i64* @ULONG_ZEROONE, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @memtest_fill_value(i64* %91, i64 %92, i32 %93, i64 %94, i8 signext 67, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 (...) @memtest_progress_end()
  br label %101

101:                                              ; preds = %99, %90
  %102 = load i64*, i64** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @memtest_compare_times(i64* %102, i64 %103, i32 %104, i32 4, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %10, align 4
  br label %11

111:                                              ; preds = %11
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local i32 @memtest_progress_start(i8*, i32) #1

declare dso_local i64 @memtest_addressing(i64*, i64, i32) #1

declare dso_local i32 @memtest_progress_end(...) #1

declare dso_local i32 @memtest_fill_random(i64*, i64, i32) #1

declare dso_local i64 @memtest_compare_times(i64*, i64, i32, i32, i32) #1

declare dso_local i32 @memtest_fill_value(i64*, i64, i32, i64, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
