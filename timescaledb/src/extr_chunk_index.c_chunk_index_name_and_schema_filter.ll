; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_name_and_schema_filter.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_name_and_schema_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@SCAN_INCLUDE = common dso_local global i32 0, align 4
@SCAN_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @chunk_index_name_and_schema_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_index_name_and_schema_filter(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @GETSTRUCT(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @namestrcmp(i32* %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_17__* @ts_chunk_get_by_id(i32 %27, i32 0, i32 0)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = icmp ne %struct.TYPE_17__* null, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @namestrcmp(i32* %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @SCAN_INCLUDE, align 4
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %31, %24
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @namestrcmp(i32* %45, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_14__* @ts_hypertable_get_by_id(i32 %54)
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %9, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = icmp ne %struct.TYPE_14__* null, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @namestrcmp(i32* %61, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @SCAN_INCLUDE, align 4
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %58, %51
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* @SCAN_EXCLUDE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %67, %40
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @namestrcmp(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @ts_chunk_get_by_id(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @ts_hypertable_get_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
