; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner.c_is_hypertable_chunk_dml.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner.c_is_hypertable_chunk_dml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__*)* @is_hypertable_chunk_dml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hypertable_chunk_dml(%struct.TYPE_11__* %0, i32* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CMD_UPDATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CMD_DELETE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %21, %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_12__* @ts_get_appendrelinfo(%struct.TYPE_11__* %30, i32 %31, i32 1)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %11, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %62

36:                                               ; preds = %29
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @InvalidOid, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32* @ts_hypertable_cache_get_entry(i32* %51, i64 %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @ts_cache_release(i32* %54)
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %62

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %43, %36
  br label %61

61:                                               ; preds = %60, %21
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %35
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_12__* @ts_get_appendrelinfo(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i64) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
