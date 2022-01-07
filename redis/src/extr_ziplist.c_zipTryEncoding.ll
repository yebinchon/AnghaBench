; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipTryEncoding.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipTryEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_INT_IMM_MIN = common dso_local global i64 0, align 8
@INT8_MIN = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i64 0, align 8
@ZIP_INT_8B = common dso_local global i8 0, align 1
@INT16_MIN = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@ZIP_INT_16B = common dso_local global i8 0, align 1
@INT24_MIN = common dso_local global i64 0, align 8
@INT24_MAX = common dso_local global i64 0, align 8
@ZIP_INT_24B = common dso_local global i8 0, align 1
@INT32_MIN = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@ZIP_INT_32B = common dso_local global i8 0, align 1
@ZIP_INT_64B = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipTryEncoding(i8* %0, i32 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp uge i32 %11, 32
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %89

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @string2ll(i8* %18, i32 %19, i64* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %17
  %23 = load i64, i64* %10, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* %10, align 8
  %27 = icmp sle i64 %26, 12
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* @ZIP_INT_IMM_MIN, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %29, %30
  %32 = trunc i64 %31 to i8
  %33 = load i8*, i8** %9, align 8
  store i8 %32, i8* %33, align 1
  br label %85

34:                                               ; preds = %25, %22
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @INT8_MIN, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @INT8_MAX, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8, i8* @ZIP_INT_8B, align 1
  %44 = load i8*, i8** %9, align 8
  store i8 %43, i8* %44, align 1
  br label %84

45:                                               ; preds = %38, %34
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @INT16_MIN, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @INT16_MAX, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8, i8* @ZIP_INT_16B, align 1
  %55 = load i8*, i8** %9, align 8
  store i8 %54, i8* %55, align 1
  br label %83

56:                                               ; preds = %49, %45
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @INT24_MIN, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @INT24_MAX, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8, i8* @ZIP_INT_24B, align 1
  %66 = load i8*, i8** %9, align 8
  store i8 %65, i8* %66, align 1
  br label %82

67:                                               ; preds = %60, %56
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @INT32_MIN, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @INT32_MAX, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8, i8* @ZIP_INT_32B, align 1
  %77 = load i8*, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  br label %81

78:                                               ; preds = %71, %67
  %79 = load i8, i8* @ZIP_INT_64B, align 1
  %80 = load i8*, i8** %9, align 8
  store i8 %79, i8* %80, align 1
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %42
  br label %85

85:                                               ; preds = %84, %28
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  store i32 1, i32* %5, align 4
  br label %89

88:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %85, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @string2ll(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
