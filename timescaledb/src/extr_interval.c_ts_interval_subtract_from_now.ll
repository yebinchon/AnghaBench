; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_subtract_from_now.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_subtract_from_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@timestamptz_timestamp = common dso_local global i32 0, align 4
@timestamp_mi_interval = common dso_local global i32 0, align 4
@timestamptz_mi_interval = common dso_local global i32 0, align 4
@timestamp_date = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown time type OID %d\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"integer_now function must be set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_interval_subtract_from_now(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @AssertArg(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @AssertArg(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ts_dimension_get_partition_type(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %2
  %24 = call i32 (...) @GetCurrentTimestamp()
  %25 = call i32 @TimestampTzGetDatum(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %60 [
    i32 129, label %27
    i32 128, label %38
    i32 130, label %46
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @timestamptz_timestamp, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DirectFunctionCall1(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @timestamp_mi_interval, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @IntervalPGetDatum(i32* %34)
  %36 = call i32 @DirectFunctionCall2(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %23
  %39 = load i32, i32* @timestamptz_mi_interval, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i32 @IntervalPGetDatum(i32* %42)
  %44 = call i32 @DirectFunctionCall2(i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %23
  %47 = load i32, i32* @timestamptz_timestamp, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DirectFunctionCall1(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @timestamp_mi_interval, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i32 @IntervalPGetDatum(i32* %53)
  %55 = call i32 @DirectFunctionCall2(i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @timestamp_date, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @DirectFunctionCall1(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %23
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = call i32 @ereport(i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %60
  br label %90

68:                                               ; preds = %2
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @get_integer_now_func(i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ts_interval_now_func_validate(i32 %71, i32 %72)
  %74 = load i32, i32* @InvalidOid, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ts_interval_from_now_func_get_datum(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %67
  %91 = call i32 (...) @pg_unreachable()
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %83, %46, %38, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @ts_dimension_get_partition_type(i32*) #1

declare dso_local i32 @TimestampTzGetDatum(i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @IntervalPGetDatum(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @get_integer_now_func(i32*) #1

declare dso_local i32 @ts_interval_now_func_validate(i32, i32) #1

declare dso_local i32 @ts_interval_from_now_func_get_datum(i32, i32, i32) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
