; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_now_func_validate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_now_func_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid integer_now function\00", align 1
@PROCOID = common dso_local global i32 0, align 4
@ERRCODE_NO_DATA_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@PROVOLATILE_IMMUTABLE = common dso_local global i64 0, align 8
@PROVOLATILE_STABLE = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"integer_now_func must take no arguments and it must be STABLE\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"return type of integer_now_func must be the same as the type of the time partitioning column of the hypertable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_interval_now_func_validate(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @IS_INTEGER_TYPE(i64 %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @OidIsValid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @PROCOID, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ObjectIdGetDatum(i64 %21)
  %23 = call i32 @SearchSysCache1(i32 %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ReleaseSysCache(i32 %28)
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_NO_DATA_FOUND, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %27, %19
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @GETSTRUCT(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %6, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PROVOLATILE_IMMUTABLE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PROVOLATILE_STABLE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ReleaseSysCache(i32 %57)
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %51
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ReleaseSysCache(i32 %71)
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %64
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ReleaseSysCache(i32 %79)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IS_INTEGER_TYPE(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
