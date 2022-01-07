; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_column.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot rename column \22%s\22 of hypertable chunk \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Rename the hypertable column instead.\00", align 1
@HypertableIsMaterialization = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"cannot rename column \22%s\22 of materialization table \22%s\22\00", align 1
@DIMENSION_TYPE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_8__*)* @process_rename_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rename_column(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_9__* @ts_hypertable_cache_get_entry(i32* %12, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = icmp eq %struct.TYPE_9__* null, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @ts_chunk_get_by_relid(i32 %18, i32 0, i32 0)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* null, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @get_rel_name(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %23, i32 %32)
  br label %34

34:                                               ; preds = %22, %17
  br label %76

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ts_continuous_agg_hypertable_status(i32 %39)
  %41 = load i32, i32* @HypertableIsMaterialization, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @get_rel_name(i32 %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52)
  %54 = call i32 @ereport(i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %44, %35
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = call i32 @process_add_hypertable(i32* %56, %struct.TYPE_9__* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DIMENSION_TYPE_ANY, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @ts_hyperspace_get_dimension_by_name(i32 %61, i32 %62, i32 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* null, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %76

70:                                               ; preds = %55
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ts_dimension_set_name(i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %69, %34
  ret void
}

declare dso_local %struct.TYPE_9__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ts_continuous_agg_hypertable_status(i32) #1

declare dso_local i32 @process_add_hypertable(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @ts_hyperspace_get_dimension_by_name(i32, i32, i32) #1

declare dso_local i32 @ts_dimension_set_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
