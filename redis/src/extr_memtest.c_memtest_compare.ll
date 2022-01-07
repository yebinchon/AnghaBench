; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_compare.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"\0A*** MEMORY ERROR DETECTED: %p != %p (%lu vs %lu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_compare(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = udiv i64 %12, 8
  %14 = udiv i64 %13, 2
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %15, 4095
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64*, i64** %5, align 8
  store i64* %20, i64** %10, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64* %23, i64** %11, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %65, %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i64*, i64** %10, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i64*, i64** %10, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = load i64*, i64** %11, align 8
  %41 = bitcast i64* %40 to i8*
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %41, i64 %43, i64 %45)
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %69

49:                                               ; preds = %28
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %10, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memtest_progress_step(i64 %61, i64 %62, i8 signext 61)
  br label %64

64:                                               ; preds = %60, %57, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %24

68:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memtest_progress_step(i64, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
