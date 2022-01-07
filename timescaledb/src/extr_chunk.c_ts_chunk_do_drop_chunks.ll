; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_do_drop_chunks.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_do_drop_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32, %struct.TYPE_12__**, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"cannot drop_chunks on a continuous aggregate materialization table\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [113 x i8] c"cannot drop_chunks on hypertable that has a continuous aggregate without cascade_to_materializations set to true\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"drop_chunks\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@DROP_CASCADE = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@ts_cm_functions = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_chunk_do_drop_chunks(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i32*, i32** @NIL, align 8
  store i32* %26, i32** %20, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ts_hypertable_relid_to_id(i32 %27)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (...) @GetUserId()
  %31 = call i32 @ts_hypertable_permissions_check(i32 %29, i32 %30)
  %32 = load i32, i32* %23, align 4
  %33 = call i32 @ts_continuous_agg_hypertable_status(i32 %32)
  switch i32 %33, label %47 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %37
  ]

34:                                               ; preds = %8, %8
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %8, %34
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  br label %48

47:                                               ; preds = %8
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @CurrentMemoryContext, align 4
  %55 = call %struct.TYPE_12__** @chunk_get_chunks_in_time_range(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32* %18)
  store %struct.TYPE_12__** %55, %struct.TYPE_12__*** %19, align 8
  br label %56

56:                                               ; preds = %113, %48
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %61, i64 %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @quote_identifier(i32 %69)
  store i8* %70, i8** %21, align 8
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %71, i64 %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @quote_identifier(i32 %79)
  store i8* %80, i8** %22, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = load i8*, i8** %22, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %82, %84
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %24, align 8
  %88 = load i64, i64* %24, align 8
  %89 = call i8* @palloc(i64 %88)
  store i8* %89, i8** %25, align 8
  %90 = load i8*, i8** %25, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i8*, i8** %21, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = call i32 @snprintf(i8* %90, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %92, i8* %93)
  %95 = load i32*, i32** %20, align 8
  %96 = load i8*, i8** %25, align 8
  %97 = call i32* @lappend(i32* %95, i8* %96)
  store i32* %97, i32** %20, align 8
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %98, i64 %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %60
  %106 = load i32, i32* @DROP_CASCADE, align 4
  br label %109

107:                                              ; preds = %60
  %108 = load i32, i32* @DROP_RESTRICT, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @ts_chunk_drop(%struct.TYPE_12__* %102, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %56

116:                                              ; preds = %56
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ts_cm_functions, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32 (i32, %struct.TYPE_12__**, i32)*, i32 (i32, %struct.TYPE_12__**, i32)** %121, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i32 %122(i32 %123, %struct.TYPE_12__** %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %116
  %128 = load i32*, i32** %20, align 8
  ret i32* %128
}

declare dso_local i32 @ts_hypertable_relid_to_id(i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @ts_continuous_agg_hypertable_status(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_12__** @chunk_get_chunks_in_time_range(i32, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i8* @quote_identifier(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @palloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i32 @ts_chunk_drop(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
