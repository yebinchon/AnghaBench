; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_now_func_get_datum.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_now_func_get_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_INT16_MIN = common dso_local global i64 0, align 8
@PG_INT16_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERVAL_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ts_interval overflow\00", align 1
@PG_INT32_MIN = common dso_local global i64 0, align 8
@PG_INT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @ts_interval_from_now_func_get_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_interval_from_now_func_get_datum(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @IS_INTEGER_TYPE(i32 %10)
  %12 = call i32 @AssertArg(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ts_interval_now_func_validate(i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @OidFunctionCall0(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %79 [
    i32 130, label %19
    i32 129, label %40
    i32 128, label %61
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @DatumGetInt16(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @PG_INT16_MIN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PG_INT16_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %19
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INTERVAL_FIELD_OVERFLOW, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @Int16GetDatum(i64 %38)
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @DatumGetInt32(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @PG_INT32_MIN, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @PG_INT32_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %40
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INTERVAL_FIELD_OVERFLOW, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @Int32GetDatum(i64 %59)
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %3
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @DatumGetInt64(i32 %62)
  %64 = load i64, i64* %5, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @DatumGetInt64(i32 %67)
  %69 = icmp sgt i64 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_INTERVAL_FIELD_OVERFLOW, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %61
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @Int64GetDatum(i64 %77)
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %3
  %80 = call i32 (...) @pg_unreachable()
  br label %81

81:                                               ; preds = %37, %58, %76, %79
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @IS_INTEGER_TYPE(i32) #1

declare dso_local i32 @ts_interval_now_func_validate(i32, i32) #1

declare dso_local i32 @OidFunctionCall0(i32) #1

declare dso_local i64 @DatumGetInt16(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Int16GetDatum(i64) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i32 @Int64GetDatum(i64) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
