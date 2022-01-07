; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_date_trunc_interval_period_approx.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_date_trunc_interval_period_approx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS = common dso_local global i32 0, align 4
@DAYS_PER_WEEK = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global i32 0, align 4
@YEARS_PER_MILLENNIUM = common dso_local global i32 0, align 4
@DAYS_PER_YEAR = common dso_local global i32 0, align 4
@YEARS_PER_CENTURY = common dso_local global i32 0, align 4
@YEARS_PER_DECADE = common dso_local global i32 0, align 4
@DAYS_PER_QUARTER = common dso_local global i32 0, align 4
@DAYS_PER_MONTH = common dso_local global i32 0, align 4
@USECS_PER_HOUR = common dso_local global i32 0, align 4
@USECS_PER_MINUTE = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timestamp units \22%s\22 not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_date_trunc_interval_period_approx(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @VARDATA_ANY(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @VARSIZE_ANY_EXHDR(i32* %9)
  %11 = call i8* @downcase_truncate_identifier(i32 %8, i32 %10, i32 0)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @DecodeUnits(i32 0, i8* %12, i32* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @UNITS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %67 [
    i32 129, label %20
    i32 135, label %24
    i32 140, label %30
    i32 138, label %36
    i32 128, label %42
    i32 131, label %47
    i32 132, label %51
    i32 139, label %55
    i32 137, label %57
    i32 133, label %59
    i32 130, label %61
    i32 134, label %63
    i32 136, label %66
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @DAYS_PER_WEEK, align 4
  %22 = load i32, i32* @USECS_PER_DAY, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %18
  %25 = load i32, i32* @YEARS_PER_MILLENNIUM, align 4
  %26 = load i32, i32* @DAYS_PER_YEAR, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* @USECS_PER_DAY, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %18
  %31 = load i32, i32* @YEARS_PER_CENTURY, align 4
  %32 = load i32, i32* @DAYS_PER_YEAR, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @USECS_PER_DAY, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %18
  %37 = load i32, i32* @YEARS_PER_DECADE, align 4
  %38 = load i32, i32* @DAYS_PER_YEAR, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @USECS_PER_DAY, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %2, align 4
  br label %75

42:                                               ; preds = %18
  %43 = load i32, i32* @DAYS_PER_YEAR, align 4
  %44 = mul nsw i32 1, %43
  %45 = load i32, i32* @USECS_PER_DAY, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %18
  %48 = load i32, i32* @DAYS_PER_QUARTER, align 4
  %49 = load i32, i32* @USECS_PER_DAY, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %2, align 4
  br label %75

51:                                               ; preds = %18
  %52 = load i32, i32* @DAYS_PER_MONTH, align 4
  %53 = load i32, i32* @USECS_PER_DAY, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %18
  %56 = load i32, i32* @USECS_PER_DAY, align 4
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %18
  %58 = load i32, i32* @USECS_PER_HOUR, align 4
  store i32 %58, i32* %2, align 4
  br label %75

59:                                               ; preds = %18
  %60 = load i32, i32* @USECS_PER_MINUTE, align 4
  store i32 %60, i32* %2, align 4
  br label %75

61:                                               ; preds = %18
  %62 = load i32, i32* @USECS_PER_SEC, align 4
  store i32 %62, i32* %2, align 4
  br label %75

63:                                               ; preds = %18
  %64 = load i32, i32* @USECS_PER_SEC, align 4
  %65 = sdiv i32 %64, 1000
  store i32 %65, i32* %2, align 4
  br label %75

66:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %75

67:                                               ; preds = %18
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = call i32 @ereport(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %66, %63, %61, %59, %57, %55, %51, %47, %42, %36, %30, %24, %20, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @downcase_truncate_identifier(i32, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @DecodeUnits(i32, i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
