; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compress_utils.c_compresschunkcxt_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compress_utils.c_compresschunkcxt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"table \22%s\22 is not a hypertable\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"chunks can be compressed only if compression property is set on the hypertable\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Use ALTER TABLE with timescaledb.compress option.\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"missing compress hypertable\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"missing hyperspace for hypertable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32, i32)* @compresschunkcxt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compresschunkcxt_init(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_11__* @ts_hypertable_cache_get_entry(i32* %12, i32 %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_rel_name(i32 %21)
  %23 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @ereport(i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %17, %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @GetUserId()
  %30 = call i32 @ts_hypertable_permissions_check(i32 %28, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = call i32 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_11__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @errhint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_11__* @ts_hypertable_get_by_id(i32 %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = icmp eq %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (...) @GetUserId()
  %60 = call i32 @ts_hypertable_permissions_check(i32 %58, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %55
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @ts_chunk_get_by_relid(i32 %72, i32 %77, i32 1)
  store i32* %78, i32** %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %84, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  ret void
}

declare dso_local %struct.TYPE_11__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_11__*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_11__* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32* @ts_chunk_get_by_relid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
