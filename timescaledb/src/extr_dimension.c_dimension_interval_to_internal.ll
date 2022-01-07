; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_interval_to_internal.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_dimension.c_dimension_interval_to_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"invalid dimension type: \22%s\22 must be an integer, date or timestamp\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"integer dimensions require an explicit interval\00", align 1
@DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE = common dso_local global i32 0, align 4
@DEFAULT_CHUNK_TIME_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"invalid interval: must be an integer type for integer dimensions\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"invalid interval: must be an interval or integer type\00", align 1
@DATEOID = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"invalid interval: must be multiples of one day\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @dimension_interval_to_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dimension_interval_to_internal(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @IS_VALID_OPEN_DIM_TYPE(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %5
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @IS_INTEGER_TYPE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @ereport(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @DEFAULT_CHUNK_TIME_INTERVAL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @Int64GetDatum(i32 %44)
  store i32 %45, i32* %9, align 4
  store i32 129, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %77 [
    i32 131, label %48
    i32 130, label %53
    i32 129, label %58
    i32 128, label %63
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DatumGetInt16(i32 %50)
  %52 = call i32 @get_validated_integer_interval(i32 %49, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %83

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @DatumGetInt32(i32 %55)
  %57 = call i32 @get_validated_integer_interval(i32 %54, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %83

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @DatumGetInt64(i32 %60)
  %62 = call i32 @get_validated_integer_interval(i32 %59, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %83

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @IS_INTEGER_TYPE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @DatumGetIntervalP(i32 %74)
  %76 = call i32 @interval_to_usec(i32 %75)
  store i32 %76, i32* %11, align 4
  br label %83

77:                                               ; preds = %46
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %73, %58, %53, %48
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DATEOID, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @USECS_PER_DAY, align 4
  %93 = srem i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90, %87
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %90, %83
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @IS_VALID_OPEN_DIM_TYPE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i64 @IS_INTEGER_TYPE(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @get_validated_integer_interval(i32, i32) #1

declare dso_local i32 @DatumGetInt16(i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @DatumGetInt64(i32) #1

declare dso_local i32 @interval_to_usec(i32) #1

declare dso_local i32 @DatumGetIntervalP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
