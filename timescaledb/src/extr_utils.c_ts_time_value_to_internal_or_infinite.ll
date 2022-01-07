; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_time_value_to_internal_or_infinite.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_time_value_to_internal_or_infinite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TimevalNegInfinity = common dso_local global i32 0, align 4
@PG_INT64_MIN = common dso_local global i32 0, align 4
@TimevalPosInfinity = common dso_local global i32 0, align 4
@PG_INT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_time_value_to_internal_or_infinite(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %102 [
    i32 129, label %12
    i32 128, label %42
    i32 130, label %72
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @DatumGetTimestamp(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @TIMESTAMP_NOT_FINITE(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @TIMESTAMP_IS_NOBEGIN(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @TimevalNegInfinity, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @PG_INT64_MIN, align 4
  store i32 %29, i32* %4, align 4
  br label %106

30:                                               ; preds = %18
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @TimevalPosInfinity, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @PG_INT64_MAX, align 4
  store i32 %37, i32* %4, align 4
  br label %106

38:                                               ; preds = %12
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ts_time_value_to_internal(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %106

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DatumGetTimestampTz(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @TIMESTAMP_NOT_FINITE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @TIMESTAMP_IS_NOBEGIN(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @TimevalNegInfinity, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @PG_INT64_MIN, align 4
  store i32 %59, i32* %4, align 4
  br label %106

60:                                               ; preds = %48
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @TimevalPosInfinity, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @PG_INT64_MAX, align 4
  store i32 %67, i32* %4, align 4
  br label %106

68:                                               ; preds = %42
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ts_time_value_to_internal(i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %106

72:                                               ; preds = %3
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DatumGetDateADT(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @DATE_NOT_FINITE(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @DATE_IS_NOBEGIN(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @TimevalNegInfinity, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @PG_INT64_MIN, align 4
  store i32 %89, i32* %4, align 4
  br label %106

90:                                               ; preds = %78
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @TimevalPosInfinity, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @PG_INT64_MAX, align 4
  store i32 %97, i32* %4, align 4
  br label %106

98:                                               ; preds = %72
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ts_time_value_to_internal(i32 %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %106

102:                                              ; preds = %3
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ts_time_value_to_internal(i32 %103, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %98, %96, %88, %68, %66, %58, %38, %36, %28
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @DatumGetTimestamp(i32) #1

declare dso_local i32 @TIMESTAMP_NOT_FINITE(i32) #1

declare dso_local i32 @TIMESTAMP_IS_NOBEGIN(i32) #1

declare dso_local i32 @ts_time_value_to_internal(i32, i32) #1

declare dso_local i32 @DatumGetTimestampTz(i32) #1

declare dso_local i32 @DatumGetDateADT(i32) #1

declare dso_local i32 @DATE_NOT_FINITE(i32) #1

declare dso_local i32 @DATE_IS_NOBEGIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
