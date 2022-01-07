; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunks_typecheck_and_find_all_in_range_limit.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunks_typecheck_and_find_all_in_range_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@InvalidStrategy = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no time dimension found\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@INTERVALOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"older_than\00", align 1
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"newer_than\00", align 1
@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [166 x i8] c"When both older_than and newer_than are specified, older_than must refer to a time that is more recent than newer_than so that a valid overlapping range is specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i32, i64, i32, i64, i32, i32, i8*, i32*)* @chunks_typecheck_and_find_all_in_range_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @chunks_typecheck_and_find_all_in_range_limit(%struct.TYPE_4__* %0, i32* %1, i32 %2, i64 %3, i32 %4, i64 %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i64 -1, i64* %23, align 8
  store i64 -1, i64* %24, align 8
  %30 = load i32, i32* @InvalidStrategy, align 4
  store i32 %30, i32* %25, align 4
  %31 = load i32, i32* @InvalidStrategy, align 4
  store i32 %31, i32* %26, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %10
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %10
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @InvalidOid, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @ts_dimension_get_partition_type(i32* %45)
  store i64 %46, i64* %28, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %28, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = call i32 @ts_dimension_open_typecheck(i64 %47, i64 %48, i8* %49)
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @INTERVALOID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = call i32* @ts_interval_from_sql_input(i32 %57, i32 %58, i64 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32* %61, i32** %22, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @ts_interval_subtract_from_now(i32* %62, i32* %63)
  %65 = load i64, i64* %28, align 8
  %66 = call i64 @ts_time_value_to_internal(i32 %64, i64 %65)
  store i64 %66, i64* %23, align 8
  br label %71

67:                                               ; preds = %44
  %68 = load i32, i32* %13, align 4
  %69 = load i64, i64* %14, align 8
  %70 = call i64 @ts_time_value_to_internal(i32 %68, i64 %69)
  store i64 %70, i64* %23, align 8
  br label %71

71:                                               ; preds = %67, %54
  %72 = load i32, i32* @BTLessStrategyNumber, align 4
  store i32 %72, i32* %26, align 4
  br label %73

73:                                               ; preds = %71, %40
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @InvalidOid, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  %78 = load i32*, i32** %12, align 8
  %79 = call i64 @ts_dimension_get_partition_type(i32* %78)
  store i64 %79, i64* %29, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %29, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @ts_dimension_open_typecheck(i64 %80, i64 %81, i8* %82)
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @INTERVALOID, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i64, i64* %16, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = call i32* @ts_interval_from_sql_input(i32 %90, i32 %91, i64 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  store i32* %94, i32** %22, align 8
  %95 = load i32*, i32** %22, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @ts_interval_subtract_from_now(i32* %95, i32* %96)
  %98 = load i64, i64* %29, align 8
  %99 = call i64 @ts_time_value_to_internal(i32 %97, i64 %98)
  store i64 %99, i64* %24, align 8
  br label %104

100:                                              ; preds = %77
  %101 = load i32, i32* %15, align 4
  %102 = load i64, i64* %16, align 8
  %103 = call i64 @ts_time_value_to_internal(i32 %101, i64 %102)
  store i64 %103, i64* %24, align 8
  br label %104

104:                                              ; preds = %100, %87
  %105 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  store i32 %105, i32* %25, align 4
  br label %106

106:                                              ; preds = %104, %73
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @InvalidOid, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* @InvalidOid, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i64, i64* %23, align 8
  %116 = load i64, i64* %24, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @ERROR, align 4
  %120 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 @ereport(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %114, %110, %106
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @MemoryContextSwitchTo(i32 %125)
  store i32 %126, i32* %27, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %25, align 4
  %130 = load i64, i64* %24, align 8
  %131 = load i32, i32* %26, align 4
  %132 = load i64, i64* %23, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %20, align 8
  %135 = call i32* @chunks_find_all_in_range_limit(%struct.TYPE_4__* %127, i32* %128, i32 %129, i64 %130, i32 %131, i64 %132, i32 %133, i32* %134)
  store i32* %135, i32** %21, align 8
  %136 = load i32, i32* %27, align 4
  %137 = call i32 @MemoryContextSwitchTo(i32 %136)
  %138 = load i32*, i32** %21, align 8
  ret i32* %138
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @ts_dimension_get_partition_type(i32*) #1

declare dso_local i32 @ts_dimension_open_typecheck(i64, i64, i8*) #1

declare dso_local i32* @ts_interval_from_sql_input(i32, i32, i64, i8*, i8*) #1

declare dso_local i64 @ts_time_value_to_internal(i32, i64) #1

declare dso_local i32 @ts_interval_subtract_from_now(i32*, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @chunks_find_all_in_range_limit(%struct.TYPE_4__*, i32*, i32, i64, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
