; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_sql_input.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_interval.c_ts_interval_from_sql_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"could not add drop_chunks policy because \22%s\22 is not a hypertable\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"internal error: no open dimension found while parsing interval\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid parameter value for %s\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"INTERVAL time duration cannot be used with hypertables with integer-based time dimensions\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"integer-based time duration cannot be used with hypertables with a timestamp-based time dimensions\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"integer_now_func not set on hypertable %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"invalid type for parameter %s in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ts_interval_from_sql_input(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = call %struct.TYPE_12__* @palloc0(i32 12)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (...) @GetUserId()
  %19 = call i32 @ts_hypertable_permissions_check(i32 %17, i32 %18)
  %20 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_11__* @ts_hypertable_cache_get_entry(i32* %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @get_rel_name(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %26, %5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_13__* @hyperspace_get_open_dimension(i32 %39, i32 0)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %15, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %42 = icmp eq %struct.TYPE_13__* null, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ERROR, align 4
  %45 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = call i32 @ts_dimension_get_partition_type(%struct.TYPE_13__* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @ts_cache_release(i32* %49)
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %121 [
    i32 128, label %52
    i32 131, label %75
    i32 130, label %75
    i32 129, label %75
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @IS_INTEGER_TYPE(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = call i32 @errhint(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %52
  %65 = load i32, i32* %14, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @ts_dimension_open_typecheck(i32 128, i32 %65, i8* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32* @DatumGetIntervalP(i32 %70)
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %129

75:                                               ; preds = %46, %46, %46
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @IS_INTEGER_TYPE(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = call i32 @errhint(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @NameStr(i32 %91)
  %93 = call i32 @strlen(i32 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @NameStr(i32 %99)
  %101 = call i32 @strlen(i32 %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %95, %87
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %106 = call i32 @errcode(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @get_rel_name(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  %112 = call i32 @ereport(i32 %104, i32 %111)
  br label %113

113:                                              ; preds = %103, %95
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @ts_time_value_to_internal(i32 %116, i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %129

121:                                              ; preds = %46
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %125, i8* %126)
  %128 = call i32 @ereport(i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %121, %113, %64
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  ret %struct.TYPE_12__* %130
}

declare dso_local %struct.TYPE_12__* @palloc0(i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_11__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local %struct.TYPE_13__* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_dimension_get_partition_type(%struct.TYPE_13__*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local i32 @IS_INTEGER_TYPE(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ts_dimension_open_typecheck(i32, i32, i8*) #1

declare dso_local i32* @DatumGetIntervalP(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ts_time_value_to_internal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
